<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text"/>
  <xsl:template match="account">
[
<xsl:for-each select="settings">
  <xsl:sort select="@id"/>
  "settings": {id: <xsl:value-of select="@id"/>
  <xsl:for-each select="game">
    "game": {
      "-version": "<xsl:value-of select="@version"/>",
      "-console": "<xsl:value-of select="@console"/>",
      "username": "<xsl:value-of select="@username"/>",
      "difficulty": "<xsl:value-of select="@difficulty"/>",
      "ironman":  "<xsl:value-of select="ironman/@enabled"/>,
      "hints-enabled": <xsl:value-of select="hints/@enabled"/>,
      "tutorial-enabled": <xsl:value-of select="tutorial/@enabled"/>,
      "autosave-enabled": <xsl:value-of select="autosave/@enabled"/>,
      "ui-scale": "<xsl:value-of select="ui/@scale"/>,
      "units": "<xsl:value-of select="units"/>"
    }</xsl:for-each>,
    <xsl:for-each select="graphics">
    "graphics": {
      "display": {
        "resolution": "<xsl:value-of select="display/resolution"/>",
        "mode": "<xsl:value-of select="display/mode"/>",
        "gamma-value": <xsl:value-of select="display/gamma/@value"/>,
        "brightness-value": <xsl:value-of select="display/brightness/@value"/>,
        "colorblind_mode-enabled": <xsl:value-of select="display/colorblind_mode/@enabled"/>,
        "Vsync-enabled": <xsl:value-of select="display/vsync/@enabled"/>
      },
      "texture_quality": "<xsl:value-of select="texture_quality"/>",
      "shadow_quality": "<xsl:value-of select="shadow_quality"/>",
      "terrain_quality": "<xsl:value-of select="terrain_quality"/>",
      "water_quality": "<xsl:value-of select="water_quality"/>",
      "foliage_quality": "<xsl:value-of select="foliage_quality"/>",
      "foliage_density": "<xsl:value-of select="foliage_density"/>",
      "draw_distance": "<xsl:value-of select="draw_distance"/>",
      "anti_aliasing": "<xsl:value-of select="anti_aliasing"/>",
      "anisotropic_filtering": "<xsl:value-of select="anisotropic_filtering"/>",
      "advanced_opengl-enabled": <xsl:value-of select="advanced_opengl/@enabled"/>,
      "motion_blur-enabled": <xsl:value-of select="motion_blur/@enabled"/>,
      "depth_of_field-enabled": <xsl:value-of select="depth_of_field/@enabled"/>,
      "tessalation-enabled": <xsl:value-of select="tessalation/@enabled"/>,
      "storm_effect-enabled": <xsl:value-of select="storm_effect/@enabled"/>,
      "heat_distortion-enabled": <xsl:value-of select="heat_distortion/@enabled"/>,
      "gore_visual_allowed-enabled": <xsl:value-of select="gore_visual_allowed/@enabled"/>
    }</xsl:for-each>,
    <xsl:for-each select="sound">
    "sound": {
      "volume": {
          "-enabled": <xsl:value-of select="volume/@enabled"/>,
          "master": <xsl:value-of select="volume/master"/>,
          "speech": <xsl:value-of select="volume/speech"/>,
          "music": <xsl:value-of select="volume/music"/>,
          "ambient": <xsl:value-of select="volume/ambient"/>
      },
      "speech-lang": "<xsl:value-of select="speech/@lang"/>",
        "subtitles": {
          "-lang": "<xsl:value-of select="subtitles/@lang"/>",
          "-enabled": <xsl:value-of select="subtitles/@enabled"/>
        }
      }</xsl:for-each>,
      <xsl:for-each select="controls">
      "controls": {
        "input": "<xsl:value-of select="input"/>",
        "sensitivity": <xsl:value-of select="sensitivity"/>,
        "inverted_mouse": {
          "-horizontal": <xsl:value-of select="inverted_mouse/@horizontal"/>,
          "-vertical": <xsl:value-of select="inverted_mouse/@vertical"/>
        }
      }</xsl:for-each>,
      <xsl:for-each select="misc">

    "misc": {
      "show_target_of_target-enabled": <xsl:value-of select="show_target_of_target/@enabled"/>,
      "show_target_castbar-enabled": <xsl:value-of select="show_target_castbar/@enabled"/>,
      "lock_action_bars-enabled": <xsl:value-of select="lock_action_bars/@enabled"/>,
      "map_enabled-enabled": <xsl:value-of select="map_enabled/@enabled"/>,
      "show_cape-enabled": <xsl:value-of select="show_cape/@enabled"/>,
      "show_head-enabled": <xsl:value-of select="show_head/@enabled"/>,
      "highlight_new_items-enabled": <xsl:value-of select="highlight_new_items/@enabled"/>
    }</xsl:for-each>
  }
  </xsl:for-each>
]
</xsl:template>
</xsl:stylesheet>
