import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'ทดสอบ',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Mitr',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: 1000,
                  height: 600,
                  decoration: BoxDecoration(),
                  child: GestureDetector(
                    onTap: () => FocusScope.of(context).unfocus(),
                    child: FlutterFlowVideoPlayer(
                      path:
                          'https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4',
                      videoType: VideoType.network,
                      autoPlay: false,
                      looping: true,
                      showControls: true,
                      allowFullScreen: true,
                      allowPlaybackSpeedMenu: false,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
