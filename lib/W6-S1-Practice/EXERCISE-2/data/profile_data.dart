import 'package:flutter/material.dart';
import 'package:flutter_app/W6-S1-PRACTICE/EXERCISE-2/model/profile_tile_model.dart';
ProfileData ronanProfile = ProfileData(
    name: "Pro Ronan",
    position: "Flutter Developer",
    avatarUrl: 'assets/w4-s2/girl.jpg',
    colorTheme: const Color(0xff5E9FCD),
    tiles: [
      TileData(
          icon: Icons.phone, title: "Phone Number", value: "+123 456 7890"),
      TileData(
          icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
      TileData(icon: Icons.email, title: "Mail", value: "ronan.ogogr@cadt.edu"),
    ]);

ProfileData SalProfile = ProfileData(
    name: "Heng Visal",
    position: "CEO",
    avatarUrl: "assets/W4-s2/girl.jpg",
    colorTheme: const Color(0xFFB0E0E6),
    tiles: [
      TileData(icon: Icons.phone, title: "Phone Number", value: "+885 9898989"),
      TileData(icon: Icons.location_on, title: "Address", value: "Phnom Penh"),
      TileData(icon: Icons.email, title: "Mail", value: "valsy@gmail.com"),
      TileData(icon: Icons.color_lens, title: "Color", value: "Blue"),
      TileData(icon: Icons.family_restroom, title: "Family", value: "Violet"),
    ]);

ProfileData mlbbiProfile = ProfileData(
    name: "valsyrh",
    position: "Jungle",
    avatarUrl: "assets/w4-s2/girl.jpg",
    colorTheme: const Color(0xFFC71585),
    tiles: [
      TileData(icon: Icons.phone, title: "Phone Number", value: "+431884869"),
      TileData(icon: Icons.location_on, title: "Address", value: "Phnom Penh")
    ]);
