import { Box, createStyles } from '@mantine/core';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { useEffect, useState } from 'react';
import { useNuiEvent } from '../../../hooks/useNuiEvent';
import { fetchNui } from '../../../utils/fetchNui';
import ScaleFade from '../../../transitions/ScaleFade';
import type { RadialMenuItem } from '../../../typings';
import { useLocales } from '../../../providers/LocaleProvider';

const useStyles = createStyles((theme) => ({
  wrapper: {
    position: 'absolute',
    top: '50%',
    left: '50%',
    transform: 'translate(-50%, -50%)',
  },
  prout: {
    position: 'absolute',
    top: '50%',
    left: '50%',
    transform: 'translate(-50%, -50%)',

  },
  sector: {
    fill: '#090909',
    stroke: '#615C43',
    strokeWidth: 4,
    color: '#090909',

    '&:hover': {
      fill: '#282828',
    },
    '> g > text': {
      fill: theme.colors.dark[0],
      strokeWidth: 0,
    },
  },
  backgroundCircle: {
    fill: '#090909',
    stroke: '#615C43',
    strokeWidth: 4,
  },
  centerCircle: {
    fill: '#090909',
    color: '#090909',
    stroke: '#615C43',
    strokeWidth: 4,
    '&:hover': {
      stroke: '#DC5858',
    },
  },
  centerIconContainer: {
    position: 'absolute',
    top: '50%',
    left: '50%',
    transform: 'translate(-50%, -50%)',
    pointerEvents: 'none',
  },
  centerIcon: {
    color: '#D7D7D7',
  },
}));

// includes More... button
const PAGE_ITEMS = 8;

const degToRad = (deg: number) => deg * (Math.PI / 180);

const RadialMenu: React.FC = () => {
  const { classes } = useStyles();
  const { locale } = useLocales();
  const [visible, setVisible] = useState(false);
  const [menuItems, setMenuItems] = useState<RadialMenuItem[]>([]);
  const [menu, setMenu] = useState<{ items: RadialMenuItem[]; sub?: boolean; page: number }>({
    items: [],
    sub: false,
    page: 1,
  });

  const changePage = async (increment?: boolean) => {
    setVisible(false);

    const didTransition: boolean = await fetchNui('radialTransition');

    if (!didTransition) return;

    setVisible(true);
    setMenu({ ...menu, page: increment ? menu.page + 1 : menu.page - 1 });
  };

  useEffect(() => {
    if (menu.items.length <= PAGE_ITEMS) return setMenuItems(menu.items);
    const items = menu.items.slice(PAGE_ITEMS * (menu.page - 1) - (menu.page - 1), PAGE_ITEMS * menu.page - menu.page + 1);
    if (PAGE_ITEMS * menu.page - menu.page + 1 < menu.items.length) {
      items[items.length - 1] = { icon: 'ellipsis-h', label: locale.ui.more, isMore: true };
    }
    setMenuItems(items);
  }, [menu.items, menu.page]);

  useNuiEvent('openRadialMenu', async (data: { items: RadialMenuItem[]; sub?: boolean, option?: string } | false) => {
    if (!data) return setVisible(false);
    let initialPage = 1;
    if (data.option) {
      data.items.findIndex((item, index) => item.menu == data.option && (initialPage = Math.floor(index / PAGE_ITEMS) + 1));
    }
    setMenu({ ...data, page: initialPage });
    setVisible(true);

    document.addEventListener('keyup', (e: KeyboardEvent) => {
      if (e.key === 'Escape' || e.key === 'CapsLock') {
        setVisible(false);
        fetchNui('radialClose');
      }
    });
  });

  useNuiEvent('refreshItems', (data: RadialMenuItem[]) => {
    setMenu({ ...menu, items: data });
  });

  return (
    <>
      <Box
        className={classes.wrapper}
        onContextMenu={async () => {
          if (menu.page > 1) await changePage();
          else if (menu.sub) fetchNui('radialBack');
        }}
      >
        <ScaleFade visible={visible}>
          <svg width="350px" height="350px" transform="rotate(90)">
            {/*Fixed issues with background circle extending the circle when there's less than 3 items*/}
            <g transform="translate(175, 175)">
              <circle r={175} className={classes.backgroundCircle} />
            </g>
            {menuItems.map((item, index) => {
              // Always draw full circle to avoid elipse circles with 2 or less items
              const pieAngle = 360 / (menuItems.length < 3 ? 3 : menuItems.length);
              const angle = degToRad(pieAngle / 2 + 90);
              const gap = 0;
              const radius = 175 * 0.65 - gap;
              const sinAngle = Math.sin(angle);
              const cosAngle = Math.cos(angle);
              const iconX = 175 + sinAngle * radius;
              const iconY = 175 + cosAngle * radius;

              return (
                <>
                  <g
                    transform={`rotate(-${index * pieAngle} 175 175) translate(${sinAngle * gap}, ${cosAngle * gap})`}
                    className={classes.sector}
                    onClick={async () => {
                      const clickIndex = menu.page === 1 ? index : PAGE_ITEMS * (menu.page - 1) - (menu.page - 1) + index;
                      if (!item.isMore) fetchNui('radialClick', clickIndex);
                      else {
                        await changePage(true);
                      }
                    }}
                  >
                    <path
                      d={`M175.01,175.01 l${175 - gap},0 A175.01,175.01 0 0,0 ${
                        175 + (175 - gap) * Math.cos(-degToRad(pieAngle))
                      }, ${175 + (175 - gap) * Math.sin(-degToRad(pieAngle))} z`}
                    />
                    <g transform={`rotate(${index * pieAngle - 90} ${iconX} ${iconY})`} pointerEvents="none">
                      <FontAwesomeIcon
                        x={iconX - 12.5}
                        y={iconY - 17.5}
                        icon={item.icon}
                        width={25}
                        height={25}
                        fixedWidth
                      />
                      <text x={iconX} y={iconY + 25} fill="#fff" textAnchor="middle" pointerEvents="none">
                        {item.label}
                      </text>
                    </g>
                  </g>
                </>
              );
            })}
            <g
              transform={`translate(175, 175)`}
              onClick={async () => {
                if (menu.page > 1) await changePage();
                else {
                  if (menu.sub) fetchNui('radialBack');
                  else {
                    setVisible(false);
                    fetchNui('radialClose');
                  }
                }
              }}
            >
              <circle r={32} className={classes.centerCircle} />
            </g>
          </svg>
          <div className={classes.centerIconContainer}>
            <FontAwesomeIcon
              icon={!menu.sub && menu.page < 2 ? 'xmark' : 'arrow-rotate-left'}
              fixedWidth
              className={classes.centerIcon}
              color="#fff"
              size="2x"
            />
          </div>
        </ScaleFade>
      </Box>
    </>
  );
};

export default RadialMenu;
