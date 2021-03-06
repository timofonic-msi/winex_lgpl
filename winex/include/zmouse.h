/*
 * Scroll wheel mouse definitions
 *
 * Copyright (C) 2000 CodeWeavers
 */

#ifndef __WINE_ZMOUSE_H
#define __WINE_ZMOUSE_H

#define MSH_MOUSEWHEEL "MSWHEEL_ROLLMSG"

#define MOUSEZ_CLASSNAME  "MouseZ"
#define MOUSEZ_TITLE      "Magellan MSWHEEL"

#define MSH_WHEELMODULE_CLASS (MOUSEZ_CLASSNAME)
#define MSH_WHEELMODULE_TITLE (MOUSEZ_TITLE)

#define MSH_WHEELSUPPORT "MSH_WHEELSUPPORT_MSG"

#define MSH_SCROLL_LINES "MSH_SCROLL_LINES_MSG"

#define WHEEL_DELTA      120

#ifndef WHEEL_PAGESCROLL
#define WHEEL_PAGESCROLL  (UINT_MAX)
#endif

#ifndef SPI_SETWHEELSCROLLLINES
#define SPI_SETWHEELSCROLLLINES   105
#endif

#endif  /* __WINE_ZMOUSE_H */
