/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static int fuzzy = 1;
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"Nerd Hack Font:size=11.5"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
	[SchemeNorm] = { "#bbbbbb", "#353840" },
	[SchemeSel] = { "#eeeeee", "#2A2D3A" },
	[SchemeSelHighlight] = { "#BBBBBB", "#2A2D3A" },
	[SchemeNormHighlight] = { "#FFFFFF", "#2A2D3A" },
	[SchemeOut] = { "#000000", "#ffffff" },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 0;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";
