<%
    default_title = "Playing '" + hda.name + "'"

    # Use root for resource loading.
    root = h.url_for( '/' )
%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${title or default_title} | ${visualization_display_name}</title>

${h.stylesheet_link( root + 'plugins/visualizations/video/static/video-js.css' )}
${h.js( 'libs/jquery/jquery' )}
${h.javascript_link( root + 'plugins/visualizations/video/static/video.js' )}

<script>
    videojs.options.flash.swf = "${h.url_for(root + 'plugins/visualizations/video/static/video-js.swf')}"
</script>
</head>
<body>

    <video id="vid" class="video-js vjs-default-skin" controls preload="none" width="640" height="264" data-setup="{}">
        <source src="${h.url_for( root + 'datasets/')}${ trans.security.encode_id( hda.id ) }/display/?preview=True&f=.mp4" type='video/mp4' />
        <p class="vjs-no-js">To view this video please enable JavaScript, and consider upgrading to a web browser that <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a></p>
  </video>

</body>
