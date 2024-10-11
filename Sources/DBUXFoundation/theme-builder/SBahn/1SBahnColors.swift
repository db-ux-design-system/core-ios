//import SwiftUI
//
//let SBahnColors: [String: Color] = [
//  "neutral0": Color(hex: 0x070709),
//  "neutral1": Color(hex: 0x0d0e11),
//  "neutral2": Color(hex: 0x121316),
//  "neutral3": Color(hex: 0x1a1c1f),
//  "neutral4": Color(hex: 0x2e3036),
//  "neutral5": Color(hex: 0x43474e),
//  "neutral6": Color(hex: 0x5a5e68),
//  "neutral7": Color(hex: 0x727782),
//  "neutral8": Color(hex: 0x8a919e),
//  "neutral9": Color(hex: 0xa6abb6),
//  "neutral10": Color(hex: 0xc3c7ce),
//  "neutral11": Color(hex: 0xe1e2e6),
//  "neutral12": Color(hex: 0xedeef0),
//  "neutral13": Color(hex: 0xf3f3f5),
//  "neutral14": Color(hex: 0xffffff),
//  "neutralOrigin": Color(hex: 0x646973),
//  "neutralOnOriginDefaultLight": Color(hex: 0xf9f9fa),
//  "neutralOnOriginHoveredLight": Color(hex: 0xdcdce2),
//  "neutralOnOriginPressedLight": Color(hex: 0xc0c0cb),
//  "neutralOriginDefaultLight": Color(hex: 0x646973),
//  "neutralOriginHoveredLight": Color(hex: 0x4d5159),
//  "neutralOriginPressedLight": Color(hex: 0x373a40),
//  "neutralOnOriginDefaultDark": Color(hex: 0xf9f9fa),
//  "neutralOnOriginHoveredDark": Color(hex: 0xdcdce2),
//  "neutralOnOriginPressedDark": Color(hex: 0xc0c0cb),
//  "neutralOriginDefaultDark": Color(hex: 0x646973),
//  "neutralOriginHoveredDark": Color(hex: 0x7c828e),
//  "neutralOriginPressedDark": Color(hex: 0x969ca9),
//  "brand0": Color(hex: 0x030902),
//  "brand1": Color(hex: 0x051104),
//  "brand2": Color(hex: 0x081706),
//  "brand3": Color(hex: 0x0d200a),
//  "brand4": Color(hex: 0x1a3717),
//  "brand5": Color(hex: 0x284f24),
//  "brand6": Color(hex: 0x386932),
//  "brand7": Color(hex: 0x488540),
//  "brand8": Color(hex: 0x58a14f),
//  "brand9": Color(hex: 0x69be5f),
//  "brand10": Color(hex: 0x7bdc6f),
//  "brand11": Color(hex: 0x9ff796),
//  "brand12": Color(hex: 0xcbfac7),
//  "brand13": Color(hex: 0xdefcdc),
//  "brand14": Color(hex: 0xeffdee),
//  "brandOrigin": Color(hex: 0x4D8E45),
//  "brandOnOriginDefaultLight": Color(hex: 0x030902),
//  "brandOnOriginHoveredLight": Color(hex: 0x12240d),
//  "brandOnOriginPressedLight": Color(hex: 0x203b19),
//  "brandOriginDefaultLight": Color(hex: 0x4D8E45),
//  "brandOriginHoveredLight": Color(hex: 0x3d7236),
//  "brandOriginPressedLight": Color(hex: 0x2d5828),
//  "brandOnOriginDefaultDark": Color(hex: 0x030902),
//  "brandOnOriginHoveredDark": Color(hex: 0x12240d),
//  "brandOnOriginPressedDark": Color(hex: 0x203b19),
//  "brandOriginDefaultDark": Color(hex: 0x4D8E45),
//  "brandOriginHoveredDark": Color(hex: 0x5eab54),
//  "brandOriginPressedDark": Color(hex: 0x6fc864),
//  "informational0": Color(hex: 0x01080f),
//  "informational1": Color(hex: 0x011018),
//  "informational2": Color(hex: 0x021520),
//  "informational3": Color(hex: 0x041e2b),
//  "informational4": Color(hex: 0x0a3447),
//  "informational5": Color(hex: 0x124c66),
//  "informational6": Color(hex: 0x1b6586),
//  "informational7": Color(hex: 0x257fa8),
//  "informational8": Color(hex: 0x2e9acb),
//  "informational9": Color(hex: 0x38b6ef),
//  "informational10": Color(hex: 0x89cffa),
//  "informational11": Color(hex: 0xcae6fd),
//  "informational12": Color(hex: 0xe0f0fe),
//  "informational13": Color(hex: 0xebf5fe),
//  "informational14": Color(hex: 0xf5faff),
//  "informationalOrigin": Color(hex: 0x309FD1),
//  "informationalOnOriginDefaultLight": Color(hex: 0x01080f),
//  "informationalOnOriginHoveredLight": Color(hex: 0x072231),
//  "informationalOnOriginPressedLight": Color(hex: 0x0f384f),
//  "informationalOriginDefaultLight": Color(hex: 0x309FD1),
//  "informationalOriginHoveredLight": Color(hex: 0x2684ae),
//  "informationalOriginPressedLight": Color(hex: 0x1d698c),
//  "informationalOnOriginDefaultDark": Color(hex: 0x01080f),
//  "informationalOnOriginHoveredDark": Color(hex: 0x072231),
//  "informationalOnOriginPressedDark": Color(hex: 0x0f384f),
//  "informationalOriginDefaultDark": Color(hex: 0x309FD1),
//  "informationalOriginHoveredDark": Color(hex: 0x3abbf5),
//  "informationalOriginPressedDark": Color(hex: 0x96d2fb),
//  "warning0": Color(hex: 0x100500),
//  "warning1": Color(hex: 0x190b00),
//  "warning2": Color(hex: 0x210f00),
//  "warning3": Color(hex: 0x2c1600),
//  "warning4": Color(hex: 0x4a2800),
//  "warning5": Color(hex: 0x693c00),
//  "warning6": Color(hex: 0x8a5100),
//  "warning7": Color(hex: 0xad6600),
//  "warning8": Color(hex: 0xd17d00),
//  "warning9": Color(hex: 0xf69400),
//  "warning10": Color(hex: 0xffb782),
//  "warning11": Color(hex: 0xffdbc8),
//  "warning12": Color(hex: 0xffeadf),
//  "warning13": Color(hex: 0xfff1ea),
//  "warning14": Color(hex: 0xfff8f5),
//  "warningOrigin": Color(hex: 0xF39200),
//  "warningOnOriginDefaultLight": Color(hex: 0x100500),
//  "warningOnOriginHoveredLight": Color(hex: 0x331900),
//  "warningOnOriginPressedLight": Color(hex: 0x512b00),
//  "warningOriginDefaultLight": Color(hex: 0xF39200),
//  "warningOriginHoveredLight": Color(hex: 0xce7b00),
//  "warningOriginPressedLight": Color(hex: 0xaa6500),
//  "warningOnOriginDefaultDark": Color(hex: 0x100500),
//  "warningOnOriginHoveredDark": Color(hex: 0x331900),
//  "warningOnOriginPressedDark": Color(hex: 0x512b00),
//  "warningOriginDefaultDark": Color(hex: 0xF39200),
//  "warningOriginHoveredDark": Color(hex: 0xffb47b),
//  "warningOriginPressedDark": Color(hex: 0xffd9c3),
//  "successful0": Color(hex: 0x030900),
//  "successful1": Color(hex: 0x061100),
//  "successful2": Color(hex: 0x091701),
//  "successful3": Color(hex: 0x0f2001),
//  "successful4": Color(hex: 0x1d3702),
//  "successful5": Color(hex: 0x2d5005),
//  "successful6": Color(hex: 0x3d6a09),
//  "successful7": Color(hex: 0x4e850f),
//  "successful8": Color(hex: 0x60a114),
//  "successful9": Color(hex: 0x72bf1a),
//  "successful10": Color(hex: 0x85dd20),
//  "successful11": Color(hex: 0x99fc26),
//  "successful12": Color(hex: 0xc3ff9d),
//  "successful13": Color(hex: 0xd9ffc4),
//  "successful14": Color(hex: 0xedffe4),
//  "successfulOrigin": Color(hex: 0x63A615),
//  "successfulOnOriginDefaultLight": Color(hex: 0x030900),
//  "successfulOnOriginHoveredLight": Color(hex: 0x122400),
//  "successfulOnOriginPressedLight": Color(hex: 0x213c00),
//  "successfulOriginDefaultLight": Color(hex: 0x63A615),
//  "successfulOriginHoveredLight": Color(hex: 0x51890f),
//  "successfulOriginPressedLight": Color(hex: 0x406e0a),
//  "successfulOnOriginDefaultDark": Color(hex: 0x030900),
//  "successfulOnOriginHoveredDark": Color(hex: 0x122400),
//  "successfulOnOriginPressedDark": Color(hex: 0x213c00),
//  "successfulOriginDefaultDark": Color(hex: 0x63A615),
//  "successfulOriginHoveredDark": Color(hex: 0x75c31b),
//  "successfulOriginPressedDark": Color(hex: 0x88e221),
//  "critical0": Color(hex: 0x1a0000),
//  "critical1": Color(hex: 0x280001),
//  "critical2": Color(hex: 0x310001),
//  "critical3": Color(hex: 0x410002),
//  "critical4": Color(hex: 0x690004),
//  "critical5": Color(hex: 0x930009),
//  "critical6": Color(hex: 0xc00010),
//  "critical7": Color(hex: 0xef0016),
//  "critical8": Color(hex: 0xff5357),
//  "critical9": Color(hex: 0xff888a),
//  "critical10": Color(hex: 0xffb3b4),
//  "critical11": Color(hex: 0xffdada),
//  "critical12": Color(hex: 0xffe9e9),
//  "critical13": Color(hex: 0xfff0f0),
//  "critical14": Color(hex: 0xfff8f8),
//  "criticalOrigin": Color(hex: 0xEC0016),
//  "criticalOnOriginDefaultLight": Color(hex: 0xffffff),
//  "criticalOnOriginHoveredLight": Color(hex: 0xffdada),
//  "criticalOnOriginPressedLight": Color(hex: 0xffb3b4),
//  "criticalOriginDefaultLight": Color(hex: 0xEC0016),
//  "criticalOriginHoveredLight": Color(hex: 0xbd000f),
//  "criticalOriginPressedLight": Color(hex: 0x900009),
//  "criticalOnOriginDefaultDark": Color(hex: 0xffffff),
//  "criticalOnOriginHoveredDark": Color(hex: 0xffdada),
//  "criticalOnOriginPressedDark": Color(hex: 0xffb3b4),
//  "criticalOriginDefaultDark": Color(hex: 0xEC0016),
//  "criticalOriginHoveredDark": Color(hex: 0xff4f53),
//  "criticalOriginPressedDark": Color(hex: 0xff8587),
//  "yellow0": Color(hex: 0x0a0700),
//  "yellow1": Color(hex: 0x130e00),
//  "yellow2": Color(hex: 0x191300),
//  "yellow3": Color(hex: 0x221b00),
//  "yellow4": Color(hex: 0x3a3000),
//  "yellow5": Color(hex: 0x544600),
//  "yellow6": Color(hex: 0x6f5d00),
//  "yellow7": Color(hex: 0x8c7600),
//  "yellow8": Color(hex: 0xaa8f00),
//  "yellow9": Color(hex: 0xc8a900),
//  "yellow10": Color(hex: 0xe8c400),
//  "yellow11": Color(hex: 0xffe17c),
//  "yellow12": Color(hex: 0xffedbc),
//  "yellow13": Color(hex: 0xfff3d5),
//  "yellow14": Color(hex: 0xfff9eb),
//  "yellowOrigin": Color(hex: 0xFFD800),
//  "yellowOnOriginDefaultLight": Color(hex: 0x0a0700),
//  "yellowOnOriginHoveredLight": Color(hex: 0x261f00),
//  "yellowOnOriginPressedLight": Color(hex: 0x3f3400),
//  "yellowOriginDefaultLight": Color(hex: 0xFFD800),
//  "yellowOriginHoveredLight": Color(hex: 0xdfbc00),
//  "yellowOriginPressedLight": Color(hex: 0xbfa200),
//  "yellowOnOriginDefaultDark": Color(hex: 0x0a0700),
//  "yellowOnOriginHoveredDark": Color(hex: 0x261f00),
//  "yellowOnOriginPressedDark": Color(hex: 0x3f3400),
//  "yellowOriginDefaultDark": Color(hex: 0xFFD800),
//  "yellowOriginHoveredDark": Color(hex: 0xdfbc00),
//  "yellowOriginPressedDark": Color(hex: 0xbfa200),
//  "orange0": Color(hex: 0x100500),
//  "orange1": Color(hex: 0x190b00),
//  "orange2": Color(hex: 0x210f00),
//  "orange3": Color(hex: 0x2c1600),
//  "orange4": Color(hex: 0x4a2800),
//  "orange5": Color(hex: 0x693c00),
//  "orange6": Color(hex: 0x8a5100),
//  "orange7": Color(hex: 0xad6600),
//  "orange8": Color(hex: 0xd17d00),
//  "orange9": Color(hex: 0xf69400),
//  "orange10": Color(hex: 0xffb782),
//  "orange11": Color(hex: 0xffdbc8),
//  "orange12": Color(hex: 0xffeadf),
//  "orange13": Color(hex: 0xfff1ea),
//  "orange14": Color(hex: 0xfff8f5),
//  "orangeOrigin": Color(hex: 0xF39200),
//  "orangeOnOriginDefaultLight": Color(hex: 0x100500),
//  "orangeOnOriginHoveredLight": Color(hex: 0x331900),
//  "orangeOnOriginPressedLight": Color(hex: 0x512b00),
//  "orangeOriginDefaultLight": Color(hex: 0xF39200),
//  "orangeOriginHoveredLight": Color(hex: 0xce7b00),
//  "orangeOriginPressedLight": Color(hex: 0xaa6500),
//  "orangeOnOriginDefaultDark": Color(hex: 0x100500),
//  "orangeOnOriginHoveredDark": Color(hex: 0x331900),
//  "orangeOnOriginPressedDark": Color(hex: 0x512b00),
//  "orangeOriginDefaultDark": Color(hex: 0xF39200),
//  "orangeOriginHoveredDark": Color(hex: 0xffb47b),
//  "orangeOriginPressedDark": Color(hex: 0xffd9c3),
//  "red0": Color(hex: 0x1a0000),
//  "red1": Color(hex: 0x280001),
//  "red2": Color(hex: 0x310001),
//  "red3": Color(hex: 0x410002),
//  "red4": Color(hex: 0x690004),
//  "red5": Color(hex: 0x930009),
//  "red6": Color(hex: 0xc00010),
//  "red7": Color(hex: 0xef0016),
//  "red8": Color(hex: 0xff5357),
//  "red9": Color(hex: 0xff888a),
//  "red10": Color(hex: 0xffb3b4),
//  "red11": Color(hex: 0xffdada),
//  "red12": Color(hex: 0xffe9e9),
//  "red13": Color(hex: 0xfff0f0),
//  "red14": Color(hex: 0xfff8f8),
//  "redOrigin": Color(hex: 0xEC0016),
//  "redOnOriginDefaultLight": Color(hex: 0xffffff),
//  "redOnOriginHoveredLight": Color(hex: 0xffdada),
//  "redOnOriginPressedLight": Color(hex: 0xffb3b4),
//  "redOriginDefaultLight": Color(hex: 0xEC0016),
//  "redOriginHoveredLight": Color(hex: 0xbd000f),
//  "redOriginPressedLight": Color(hex: 0x900009),
//  "redOnOriginDefaultDark": Color(hex: 0xffffff),
//  "redOnOriginHoveredDark": Color(hex: 0xffdada),
//  "redOnOriginPressedDark": Color(hex: 0xffb3b4),
//  "redOriginDefaultDark": Color(hex: 0xEC0016),
//  "redOriginHoveredDark": Color(hex: 0xff4f53),
//  "redOriginPressedDark": Color(hex: 0xff8587),
//  "pink0": Color(hex: 0x160209),
//  "pink1": Color(hex: 0x220310),
//  "pink2": Color(hex: 0x2b0516),
//  "pink3": Color(hex: 0x39081f),
//  "pink4": Color(hex: 0x5c1335),
//  "pink5": Color(hex: 0x821e4e),
//  "pink6": Color(hex: 0xaa2b67),
//  "pink7": Color(hex: 0xd43882),
//  "pink8": Color(hex: 0xed5c9b),
//  "pink9": Color(hex: 0xf18cb2),
//  "pink10": Color(hex: 0xf5b5cb),
//  "pink11": Color(hex: 0xfadbe4),
//  "pink12": Color(hex: 0xfce9ef),
//  "pink13": Color(hex: 0xfdf1f4),
//  "pink14": Color(hex: 0xfef8fa),
//  "pinkOrigin": Color(hex: 0xE93E8F),
//  "pinkOnOriginDefaultLight": Color(hex: 0x260413),
//  "pinkOnOriginHoveredLight": Color(hex: 0x490e29),
//  "pinkOnOriginPressedLight": Color(hex: 0x6e1941),
//  "pinkOriginDefaultLight": Color(hex: 0xE93E8F),
//  "pinkOriginHoveredLight": Color(hex: 0xbe3174),
//  "pinkOriginPressedLight": Color(hex: 0x95245a),
//  "pinkOnOriginDefaultDark": Color(hex: 0x260413),
//  "pinkOnOriginHoveredDark": Color(hex: 0x490e29),
//  "pinkOnOriginPressedDark": Color(hex: 0x6e1941),
//  "pinkOriginDefaultDark": Color(hex: 0xE93E8F),
//  "pinkOriginHoveredDark": Color(hex: 0xef75a6),
//  "pinkOriginPressedDark": Color(hex: 0xf3a0be),
//  "violet0": Color(hex: 0x0d0412),
//  "violet1": Color(hex: 0x17081c),
//  "violet2": Color(hex: 0x1d0c24),
//  "violet3": Color(hex: 0x281330),
//  "violet4": Color(hex: 0x432350),
//  "violet5": Color(hex: 0x603571),
//  "violet6": Color(hex: 0x7f4895),
//  "violet7": Color(hex: 0x9f5bba),
//  "violet8": Color(hex: 0xb47ace),
//  "violet9": Color(hex: 0xc69cda),
//  "violet10": Color(hex: 0xd8bde6),
//  "violet11": Color(hex: 0xebdef2),
//  "violet12": Color(hex: 0xf3ebf7),
//  "violet13": Color(hex: 0xf7f2fa),
//  "violet14": Color(hex: 0xfbf8fc),
//  "violetOrigin": Color(hex: 0x814997),
//  "violetOnOriginDefaultLight": Color(hex: 0xfbf8fc),
//  "violetOnOriginHoveredLight": Color(hex: 0xe9d7ee),
//  "violetOnOriginPressedLight": Color(hex: 0xd7b5e1),
//  "violetOriginDefaultLight": Color(hex: 0x814997),
//  "violetOriginHoveredLight": Color(hex: 0x623673),
//  "violetOriginPressedLight": Color(hex: 0x452452),
//  "violetOnOriginDefaultDark": Color(hex: 0xfbf8fc),
//  "violetOnOriginHoveredDark": Color(hex: 0xe9d7ee),
//  "violetOnOriginPressedDark": Color(hex: 0xd7b5e1),
//  "violetOriginDefaultDark": Color(hex: 0x814997),
//  "violetOriginHoveredDark": Color(hex: 0xa15dbc),
//  "violetOriginPressedDark": Color(hex: 0xb67cce),
//  "blue0": Color(hex: 0x00061b),
//  "blue1": Color(hex: 0x010d29),
//  "blue2": Color(hex: 0x011133),
//  "blue3": Color(hex: 0x021943),
//  "blue4": Color(hex: 0x072d6c),
//  "blue5": Color(hex: 0x0d4298),
//  "blue6": Color(hex: 0x1558c6),
//  "blue7": Color(hex: 0x1d6ff7),
//  "blue8": Color(hex: 0x638bfa),
//  "blue9": Color(hex: 0x90a8fc),
//  "blue10": Color(hex: 0xb7c4fd),
//  "blue11": Color(hex: 0xdbe1fe),
//  "blue12": Color(hex: 0xeaedfe),
//  "blue13": Color(hex: 0xf1f3ff),
//  "blue14": Color(hex: 0xf8f9ff),
//  "blueOrigin": Color(hex: 0x1455C0),
//  "blueOnOriginDefaultLight": Color(hex: 0xf8f9ff),
//  "blueOnOriginHoveredLight": Color(hex: 0xd5dbff),
//  "blueOnOriginPressedLight": Color(hex: 0xb0beff),
//  "blueOriginDefaultLight": Color(hex: 0x1455C0),
//  "blueOriginHoveredLight": Color(hex: 0x0c3f92),
//  "blueOriginPressedLight": Color(hex: 0x062a67),
//  "blueOnOriginDefaultDark": Color(hex: 0xf8f9ff),
//  "blueOnOriginHoveredDark": Color(hex: 0xd5dbff),
//  "blueOnOriginPressedDark": Color(hex: 0xb0beff),
//  "blueOriginDefaultDark": Color(hex: 0x1455C0),
//  "blueOriginHoveredDark": Color(hex: 0x1c6cf0),
//  "blueOriginPressedDark": Color(hex: 0x5c87fa),
//  "cyan0": Color(hex: 0x01080f),
//  "cyan1": Color(hex: 0x011018),
//  "cyan2": Color(hex: 0x021520),
//  "cyan3": Color(hex: 0x041e2b),
//  "cyan4": Color(hex: 0x0a3447),
//  "cyan5": Color(hex: 0x124c66),
//  "cyan6": Color(hex: 0x1b6586),
//  "cyan7": Color(hex: 0x257fa8),
//  "cyan8": Color(hex: 0x2e9acb),
//  "cyan9": Color(hex: 0x38b6ef),
//  "cyan10": Color(hex: 0x89cffa),
//  "cyan11": Color(hex: 0xcae6fd),
//  "cyan12": Color(hex: 0xe0f0fe),
//  "cyan13": Color(hex: 0xebf5fe),
//  "cyan14": Color(hex: 0xf5faff),
//  "cyanOrigin": Color(hex: 0x309FD1),
//  "cyanOnOriginDefaultLight": Color(hex: 0x01080f),
//  "cyanOnOriginHoveredLight": Color(hex: 0x072231),
//  "cyanOnOriginPressedLight": Color(hex: 0x0f384f),
//  "cyanOriginDefaultLight": Color(hex: 0x309FD1),
//  "cyanOriginHoveredLight": Color(hex: 0x2684ae),
//  "cyanOriginPressedLight": Color(hex: 0x1d698c),
//  "cyanOnOriginDefaultDark": Color(hex: 0x01080f),
//  "cyanOnOriginHoveredDark": Color(hex: 0x072231),
//  "cyanOnOriginPressedDark": Color(hex: 0x0f384f),
//  "cyanOriginDefaultDark": Color(hex: 0x309FD1),
//  "cyanOriginHoveredDark": Color(hex: 0x3abbf5),
//  "cyanOriginPressedDark": Color(hex: 0x96d2fb),
//  "turquoise0": Color(hex: 0x000908),
//  "turquoise1": Color(hex: 0x001110),
//  "turquoise2": Color(hex: 0x001715),
//  "turquoise3": Color(hex: 0x00201e),
//  "turquoise4": Color(hex: 0x003734),
//  "turquoise5": Color(hex: 0x00504c),
//  "turquoise6": Color(hex: 0x006a65),
//  "turquoise7": Color(hex: 0x00857f),
//  "turquoise8": Color(hex: 0x00a29b),
//  "turquoise9": Color(hex: 0x00bfb7),
//  "turquoise10": Color(hex: 0x00ddd4),
//  "turquoise11": Color(hex: 0x00fcf2),
//  "turquoise12": Color(hex: 0x9bfff8),
//  "turquoise13": Color(hex: 0xc3fffa),
//  "turquoise14": Color(hex: 0xe3fffd),
//  "turquoiseOrigin": Color(hex: 0x00A099),
//  "turquoiseOnOriginDefaultLight": Color(hex: 0x000908),
//  "turquoiseOnOriginHoveredLight": Color(hex: 0x002422),
//  "turquoiseOnOriginPressedLight": Color(hex: 0x003c38),
//  "turquoiseOriginDefaultLight": Color(hex: 0x00A099),
//  "turquoiseOriginHoveredLight": Color(hex: 0x00847e),
//  "turquoiseOriginPressedLight": Color(hex: 0x006864),
//  "turquoiseOnOriginDefaultDark": Color(hex: 0x000908),
//  "turquoiseOnOriginHoveredDark": Color(hex: 0x002422),
//  "turquoiseOnOriginPressedDark": Color(hex: 0x003c38),
//  "turquoiseOriginDefaultDark": Color(hex: 0x00A099),
//  "turquoiseOriginHoveredDark": Color(hex: 0x00bdb5),
//  "turquoiseOriginPressedDark": Color(hex: 0x00dcd2),
//  "green0": Color(hex: 0x030900),
//  "green1": Color(hex: 0x061100),
//  "green2": Color(hex: 0x091701),
//  "green3": Color(hex: 0x0f2001),
//  "green4": Color(hex: 0x1d3702),
//  "green5": Color(hex: 0x2d5005),
//  "green6": Color(hex: 0x3d6a09),
//  "green7": Color(hex: 0x4e850f),
//  "green8": Color(hex: 0x60a114),
//  "green9": Color(hex: 0x72bf1a),
//  "green10": Color(hex: 0x85dd20),
//  "green11": Color(hex: 0x99fc26),
//  "green12": Color(hex: 0xc3ff9d),
//  "green13": Color(hex: 0xd9ffc4),
//  "green14": Color(hex: 0xedffe4),
//  "greenOrigin": Color(hex: 0x63A615),
//  "greenOnOriginDefaultLight": Color(hex: 0x030900),
//  "greenOnOriginHoveredLight": Color(hex: 0x122400),
//  "greenOnOriginPressedLight": Color(hex: 0x213c00),
//  "greenOriginDefaultLight": Color(hex: 0x63A615),
//  "greenOriginHoveredLight": Color(hex: 0x51890f),
//  "greenOriginPressedLight": Color(hex: 0x406e0a),
//  "greenOnOriginDefaultDark": Color(hex: 0x030900),
//  "greenOnOriginHoveredDark": Color(hex: 0x122400),
//  "greenOnOriginPressedDark": Color(hex: 0x213c00),
//  "greenOriginDefaultDark": Color(hex: 0x63A615),
//  "greenOriginHoveredDark": Color(hex: 0x75c31b),
//  "greenOriginPressedDark": Color(hex: 0x88e221)
//]
