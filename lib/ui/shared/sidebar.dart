import 'package:admin_dashboard/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:admin_dashboard/providers/sidemenu_provider.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/services/navigation_service.dart';
import 'package:admin_dashboard/ui/shared/widgets/menu_item.dart';
import 'package:admin_dashboard/ui/shared/widgets/logo.dart';
import 'package:admin_dashboard/ui/shared/widgets/text_separator.dart';
import 'package:flutter/src/widgets/platform_menu_bar.dart';



class Sidebar extends StatelessWidget {

  void navigateTo ( String routeName){
  NavigationService.replaceTo( routeName);
  SideMenuProvider.closeMenu();
}
  @override
  Widget build(BuildContext context) {

    final sideMenuProvider = Provider.of<SideMenuProvider>(context);

    return Container(
      width: 200,
      height: double.infinity,
      decoration: buildBoxDecoration(),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [

          Logo(),

          SizedBox(height: 50),

          TextSeparator(text:'Menu'),

          Menu(
            text: 'Dashboard',
           icon: Icons.compass_calibration_outlined,
            onPressed: () => navigateTo(Flurorouter.dashboardRoute),
            isActive: sideMenuProvider.currentPage == Flurorouter.dashboardRoute,
          ),
          Menu(text: 'Orders', icon: Icons.shopping_cart_outlined,onPressed:  () {}),
          Menu(text: 'Analitica', icon: Icons.shopping_cart_outlined,onPressed:  () {}),
          Menu(
          text: 'Categorias',
          icon: Icons.layers_outlined,
          onPressed: () => navigateTo(Flurorouter.categoriesRoute),
          isActive: sideMenuProvider.currentPage == Flurorouter.categoriesRoute,
          ),

          Menu(text: 'Productos', icon: Icons.shopping_cart_outlined,onPressed:  () {}),
          Menu(text: 'Descuentos', icon: Icons.shopping_cart_outlined,onPressed:  () {}),


          Menu(
          text: 'Clientes',
              icon: Icons.people_alt_outlined,
              onPressed: () => navigateTo(Flurorouter.userRoute),
              isActive: sideMenuProvider.currentPage == Flurorouter.userRoute,
          ),

          SizedBox(height: 50),

          TextSeparator(text: 'UI Elements'),
          Menu(
              text: 'Otra cosa',
              icon: Icons.shopping_cart_outlined,
              onPressed: () => navigateTo(Flurorouter.iconsRoute),
            isActive: sideMenuProvider.currentPage == Flurorouter.iconsRoute,
          ),
          Menu(text: 'Order', icon: Icons.shopping_cart_outlined,onPressed:  () {}),
          Menu(text: 'Order', icon: Icons.shopping_cart_outlined,onPressed:  () {}),

          SizedBox(height: 60),
          TextSeparator(text: 'Exit'),
          Menu(
          text: 'Salir',
              icon: Icons.exit_to_app_outlined,
              onPressed:  () {
              Provider.of<AuthProvider>(context, listen:false).logout();
        }),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration () => BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color(0xff092044),
        Color(0xff092042),

      ]
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 10
      )
    ]

  );
}
