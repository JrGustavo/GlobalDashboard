import 'package:admin_dashboard/providers/sidemenu_provider.dart';
import 'package:admin_dashboard/ui/views/login_view.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';

import '../ui/views/no_page_found_vew.dart';


class NoPageFoundHandlers {

  static Handler noPageFound = Handler(
      handlerFunc: (context, params ){

        Provider.of<SideMenuProvider>(context!, listen: false).setCurrentPageUrl('/404');

        return NoPageFoundView();
      }
  );
}