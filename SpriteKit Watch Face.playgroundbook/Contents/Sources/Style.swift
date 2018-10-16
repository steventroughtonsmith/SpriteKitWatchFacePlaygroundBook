//
//  Style.swift
//  SpriteKitWatchFace WatchKit Extension
//
//  Created by Guillermo Cique Fernández on 14/10/2018.
//  Copyright © 2018 Guillermo Cique Fernández. All rights reserved.
//

import SpriteKit

public enum FaceStyle: UInt {
	case round
	case rectangular
}

public enum NumeralStyle: UInt {
	case none
	case cardinal
	case all
}

public enum TickmarkStyle: UInt {
	case none
	case major
	case minor
	case all
}

public enum TickmarkShape: UInt {
	case rectangular
	case circular
	case triangular
}

public enum ColorRegionStyle: UInt {
	case none
	case dynamicDuo
	case half
	case circle
	case ring
}

public struct ColorTheme {
	
	let name : String
	let colorRegionColor: SKColor
	let faceBackgroundColor: SKColor
	let inlayColor: SKColor
	let majorMarkColor: SKColor
	let minorMarkColor: SKColor
	let handColor: SKColor
	let textColor: SKColor
	let secondHandColor: SKColor
	
	let alternateTextColor: SKColor?
	let alternateMinorMarkColor: SKColor?
	let alternateMajorMarkColor: SKColor?
	
	let shouldUseMasking: Bool
	
	public static let allThemes: [ColorTheme] = [
		ColorTheme.chess,
		ColorTheme.hermesPink,
		ColorTheme.hermesOrange,
		ColorTheme.navy,
		ColorTheme.tidepod,
		ColorTheme.bretonnia,
		ColorTheme.noir,
		ColorTheme.contrast,
		ColorTheme.victoire,
		ColorTheme.liquid,
		ColorTheme.angler,
		ColorTheme.sculley,
		ColorTheme.kitty,
		ColorTheme.delay,
		ColorTheme.diesel,
		ColorTheme.luxe,
		ColorTheme.sage,
		ColorTheme.bondi,
		ColorTheme.tangerine,
		ColorTheme.strawberry,
		ColorTheme.pawn,
		ColorTheme.royal,
		ColorTheme.marques,
		ColorTheme.vox,
		ColorTheme.summer
	]
	
	public static let chess: ColorTheme = ColorTheme(name:"chess", colorRegionColor: SKColor(red: 89/255.0, green: 51/255.0, blue: 22/255.0, alpha: 1.000),
													 faceBackgroundColor: SKColor(white: 0, alpha: 1.000),
													 inlayColor: SKColor(red: 0.969, green: 0.878, blue: 0.780, alpha: 1.000),
													 majorMarkColor: SKColor(red: 0.804, green: 0.710, blue: 0.639, alpha: 1.000),
													 minorMarkColor: SKColor(red: 0.804, green: 0.710, blue: 0.639, alpha: 1.000),
													 handColor: SKColor(red: 0.804, green: 0.710, blue: 0.639, alpha: 1.000),
													 textColor: SKColor(red: 0.804, green: 0.710, blue: 0.639, alpha: 1.000),
													 secondHandColor: SKColor(red: 0.969, green: 0.878, blue: 0.780, alpha: 1.000),
													 alternateTextColor: nil,
													 alternateMinorMarkColor: nil,
													 alternateMajorMarkColor: nil,
													 shouldUseMasking: false)
	public static let hermesPink: ColorTheme = ColorTheme(name:"hermesPink", colorRegionColor: SKColor(red: 0.848, green: 0.187, blue: 0.349, alpha: 1),
														  faceBackgroundColor: SKColor(red: 0.387, green: 0.226, blue: 0.270, alpha: 1),
														  inlayColor: SKColor(red: 0.848, green: 0.187, blue: 0.349, alpha: 1),
														  majorMarkColor: SKColor(red: 0.831, green: 0.540, blue: 0.612, alpha: 1),
														  minorMarkColor: SKColor(red: 0.831, green: 0.540, blue: 0.612, alpha: 1),
														  handColor: .white,
														  textColor: .white,
														  secondHandColor: SKColor(red: 0.831, green: 0.540, blue: 0.612, alpha: 1),
														  alternateTextColor: nil,
														  alternateMinorMarkColor: nil,
														  alternateMajorMarkColor: nil,
														  shouldUseMasking: false)
	public static let hermesOrange: ColorTheme = ColorTheme(name:"hermesOrange", colorRegionColor: SKColor(red: 0.892, green: 0.825, blue: 0.745, alpha: 1.000),
															faceBackgroundColor: SKColor(red: 0.118, green: 0.188, blue: 0.239, alpha: 1.000),
															inlayColor: SKColor(red: 1.000, green: 0.450, blue: 0.136, alpha: 1.000),
															majorMarkColor: SKColor(red: 1.000, green: 0.450, blue: 0.136, alpha: 0.5),
															minorMarkColor: SKColor(red: 1.000, green: 0.450, blue: 0.136, alpha: 0.5),
															handColor: .white,
															textColor: SKColor(red: 1.000, green: 0.450, blue: 0.136, alpha: 1.000),
															secondHandColor: SKColor(red: 1.000, green: 0.450, blue: 0.136, alpha: 0.5),
															alternateTextColor: nil,
															alternateMinorMarkColor: nil,
															alternateMajorMarkColor: nil,
															shouldUseMasking: false)
	public static let navy: ColorTheme = ColorTheme(name:"navy", colorRegionColor: SKColor(red: 0.067, green: 0.471, blue: 0.651, alpha: 1.000),
													faceBackgroundColor: SKColor(red: 0.118, green: 0.188, blue: 0.239, alpha: 1.000),
													inlayColor: SKColor(red: 0.067, green: 0.471, blue: 0.651, alpha: 1.000),
													majorMarkColor: .white,
													minorMarkColor: .white,
													handColor: .white,
													textColor: .white,
													secondHandColor: .white,
													alternateTextColor: nil,
													alternateMinorMarkColor: nil,
													alternateMajorMarkColor: nil,
													shouldUseMasking: false)
	public static let tidepod: ColorTheme = ColorTheme(name:"tidepod", colorRegionColor: SKColor(red: 1.000, green: 0.450, blue: 0.136, alpha: 1.000),
													   faceBackgroundColor: SKColor(red: 0.067, green: 0.471, blue: 0.651, alpha: 1.000),
													   inlayColor: SKColor(red: 0.953, green: 0.569, blue: 0.196, alpha: 1.000),
													   majorMarkColor: .white,
													   minorMarkColor: .white,
													   handColor: .white,
													   textColor: .white,
													   secondHandColor: .white,
													   alternateTextColor: nil,
													   alternateMinorMarkColor: nil,
													   alternateMajorMarkColor: nil,
													   shouldUseMasking: false)
	public static let bretonnia: ColorTheme = ColorTheme(name:"bretonnia", colorRegionColor: SKColor(red: 0.067, green: 0.420, blue: 0.843, alpha: 1.000),
														 faceBackgroundColor: SKColor(red: 0.956, green: 0.137, blue: 0.294, alpha: 1.000),
														 inlayColor: SKColor(red: 0.956, green: 0.137, blue: 0.294, alpha: 1.000),
														 majorMarkColor: .white,
														 minorMarkColor: .white,
														 handColor: .white,
														 textColor: .white,
														 secondHandColor: .white,
														 alternateTextColor: nil,
														 alternateMinorMarkColor: nil,
														 alternateMajorMarkColor: nil,
														 shouldUseMasking: false)
	public static let noir: ColorTheme = ColorTheme(name:"noir", colorRegionColor: SKColor(white:0.3, alpha: 1.0),
													faceBackgroundColor: .black,
													inlayColor: .black,
													majorMarkColor: .white,
													minorMarkColor: .white,
													handColor: .white,
													textColor: .white,
													secondHandColor: .white,
													alternateTextColor: nil,
													alternateMinorMarkColor: nil,
													alternateMajorMarkColor: nil,
													shouldUseMasking: false)
	public static let contrast: ColorTheme = ColorTheme(name:"contrast", colorRegionColor: .white,
														faceBackgroundColor: .white,
														inlayColor: .white,
														majorMarkColor: .black,
														minorMarkColor: .black,
														handColor: .black,
														textColor: .black,
														secondHandColor: .black,
														alternateTextColor: nil,
														alternateMinorMarkColor: nil,
														alternateMajorMarkColor: nil,
														shouldUseMasking: false)
	public static let victoire: ColorTheme = ColorTheme(name:"victoire", colorRegionColor: SKColor(red: 0.749, green: 0.291, blue: 0.319, alpha: 1.000),
														faceBackgroundColor: SKColor(red: 0.391, green: 0.382, blue: 0.340, alpha: 1.000),
														inlayColor: SKColor(red: 0.649, green: 0.191, blue: 0.219, alpha: 1.000),
														majorMarkColor: SKColor(red: 0.937, green: 0.925, blue: 0.871, alpha: 1.000),
														minorMarkColor: SKColor(red: 0.937, green: 0.925, blue: 0.871, alpha: 1.000),
														handColor: SKColor(red: 0.937, green: 0.925, blue: 0.871, alpha: 1.000),
														textColor: SKColor(red: 0.937, green: 0.925, blue: 0.871, alpha: 1.000),
														secondHandColor: SKColor(red: 0.949, green: 0.491, blue: 0.619, alpha: 1.000),
														alternateTextColor: nil,
														alternateMinorMarkColor: nil,
														alternateMajorMarkColor: nil,
														shouldUseMasking: false)
	public static let liquid: ColorTheme = ColorTheme(name:"liquid", colorRegionColor: SKColor(white: 0.2, alpha: 1.0),
													  faceBackgroundColor: SKColor(white: 0.2, alpha: 1.0),
													  inlayColor: SKColor(white: 0.3, alpha: 1.0),
													  majorMarkColor: SKColor(white: 0.5, alpha: 1.0),
													  minorMarkColor: SKColor(white: 0.5, alpha: 1.0),
													  handColor: .white,
													  textColor: .white,
													  secondHandColor: SKColor(white: 0.5, alpha: 1.0),
													  alternateTextColor: nil,
													  alternateMinorMarkColor: nil,
													  alternateMajorMarkColor: nil,
													  shouldUseMasking: false)
	public static let angler: ColorTheme = ColorTheme(name:"angler", colorRegionColor: .black,
													  faceBackgroundColor: .black,
													  inlayColor: SKColor(red: 0.180, green: 0.800, blue: 0.482, alpha: 1.000),
													  majorMarkColor: SKColor(red: 0.180, green: 0.800, blue: 0.482, alpha: 1.000),
													  minorMarkColor: SKColor(red: 0.180, green: 0.800, blue: 0.482, alpha: 1.000),
													  handColor: SKColor(red: 0.180, green: 0.800, blue: 0.482, alpha: 0.4),
													  textColor: SKColor(red: 0.180, green: 0.800, blue: 0.482, alpha: 1.000),
													  secondHandColor: SKColor(red: 0.180, green: 0.800, blue: 0.482, alpha: 1.000),
													  alternateTextColor: nil,
													  alternateMinorMarkColor: nil,
													  alternateMajorMarkColor: nil,
													  shouldUseMasking: false)
	public static let sculley: ColorTheme = ColorTheme(name:"sculley", colorRegionColor: SKColor(red: 0.180, green: 0.800, blue: 0.482, alpha: 1.000),
													   faceBackgroundColor: SKColor(red: 0.180, green: 0.600, blue: 0.282, alpha: 1.000),
													   inlayColor: SKColor(red: 0.180, green: 0.800, blue: 0.482, alpha: 1.000),
													   majorMarkColor: SKColor(red: 0.080, green: 0.300, blue: 0.082, alpha: 1.000),
													   minorMarkColor: SKColor(red: 0.080, green: 0.300, blue: 0.082, alpha: 1.000),
													   handColor: SKColor(red: 0.080, green: 0.300, blue: 0.082, alpha: 1.000),
													   textColor: SKColor(red: 0.080, green: 0.300, blue: 0.082, alpha: 1.000),
													   secondHandColor: SKColor(red: 0.080, green: 0.300, blue: 0.082, alpha: 1.000),
													   alternateTextColor: nil,
													   alternateMinorMarkColor: nil,
													   alternateMajorMarkColor: nil,
													   shouldUseMasking: false)
	public static let kitty: ColorTheme = ColorTheme(name:"kitty", colorRegionColor: SKColor(red: 0.447, green: 0.788, blue: 0.796, alpha: 1.000),
													 faceBackgroundColor: SKColor(red: 0.459, green: 0.471, blue: 0.706, alpha: 1.000),
													 inlayColor: SKColor(red: 0.447, green: 0.788, blue: 0.796, alpha: 1.000),
													 majorMarkColor: SKColor(red: 0.259, green: 0.271, blue: 0.506, alpha: 1.000),
													 minorMarkColor: SKColor(red: 0.259, green: 0.271, blue: 0.506, alpha: 1.000),
													 handColor: SKColor(white: 0.9, alpha: 1),
													 textColor: SKColor(red: 0.159, green: 0.171, blue: 0.406, alpha: 1.000),
													 secondHandColor: SKColor(red: 0.976, green: 0.498, blue: 0.439, alpha: 1.000),
													 alternateTextColor: nil,
													 alternateMinorMarkColor: nil,
													 alternateMajorMarkColor: nil,
													 shouldUseMasking: false)
	public static let delay: ColorTheme = ColorTheme(name:"delay", colorRegionColor: SKColor(red: 0.941, green: 0.408, blue: 0.231, alpha: 1.000),
													 faceBackgroundColor: SKColor(white: 0.282, alpha: 1.000),
													 inlayColor: SKColor(red: 0.941, green: 0.408, blue: 0.231, alpha: 1.000),
													 majorMarkColor: SKColor(red: 0.941, green: 0.708, blue: 0.531, alpha: 1.000),
													 minorMarkColor: SKColor(red: 0.941, green: 0.708, blue: 0.531, alpha: 1.000),
													 handColor: .white,
													 textColor: .white,
													 secondHandColor: SKColor(red: 0.941, green: 0.708, blue: 0.531, alpha: 1.000),
													 alternateTextColor: nil,
													 alternateMinorMarkColor: nil,
													 alternateMajorMarkColor: nil,
													 shouldUseMasking: false)
	public static let diesel: ColorTheme = ColorTheme(name:"diesel", colorRegionColor: SKColor(red: 0.702, green: 0.212, blue: 0.231, alpha: 1.000),
													  faceBackgroundColor: SKColor(red: 0.027, green: 0.251, blue: 0.502, alpha: 1.000),
													  inlayColor: SKColor(red: 0.502, green: 0.212, blue: 0.231, alpha: 1.000),
													  majorMarkColor: SKColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 0.8),
													  minorMarkColor: SKColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 0.8),
													  handColor: .white,
													  textColor: .white,
													  secondHandColor: SKColor(red: 0.802, green: 0.412, blue: 0.431, alpha: 1.000),
													  alternateTextColor: nil,
													  alternateMinorMarkColor: nil,
													  alternateMajorMarkColor: nil,
													  shouldUseMasking: false)
	public static let luxe: ColorTheme = ColorTheme(name:"luxe", colorRegionColor: SKColor(white: 0.082, alpha: 1.000),
													faceBackgroundColor: SKColor(white: 0.082, alpha: 1.000),
													inlayColor: SKColor(red: 0.969, green: 0.878, blue: 0.780, alpha: 1.000),
													majorMarkColor: SKColor(red: 0.804, green: 0.710, blue: 0.639, alpha: 1.000),
													minorMarkColor: SKColor(red: 0.804, green: 0.710, blue: 0.639, alpha: 1.000),
													handColor: SKColor(red: 0.804, green: 0.710, blue: 0.639, alpha: 1.000),
													textColor: SKColor(red: 0.804, green: 0.710, blue: 0.639, alpha: 1.000),
													secondHandColor: SKColor(red: 0.969, green: 0.878, blue: 0.780, alpha: 1.000),
													alternateTextColor: nil,
													alternateMinorMarkColor: nil,
													alternateMajorMarkColor: nil,
													shouldUseMasking: false)
	public static let sage: ColorTheme = ColorTheme(name:"sage", colorRegionColor: SKColor(red: 0.357, green: 0.678, blue: 0.600, alpha: 1.000),
													faceBackgroundColor: SKColor(red: 0.264, green: 0.346, blue: 0.321, alpha: 1.000),
													inlayColor: SKColor(red: 0.357, green: 0.678, blue: 0.600, alpha: 1.000),
													majorMarkColor: SKColor(red: 0.607, green: 0.754, blue: 0.718, alpha: 1.000),
													minorMarkColor: SKColor(red: 0.607, green: 0.754, blue: 0.718, alpha: 1.000),
													handColor: .white,
													textColor: .white,
													secondHandColor: SKColor(red: 0.357, green: 0.678, blue: 0.600, alpha: 1.000),
													alternateTextColor: nil,
													alternateMinorMarkColor: nil,
													alternateMajorMarkColor: nil,
													shouldUseMasking: false)
	public static let bondi: ColorTheme = ColorTheme(name:"bondi", colorRegionColor: SKColor(red: 0.086, green: 0.584, blue: 0.706, alpha: 1.000),
													 faceBackgroundColor: SKColor(white: 0.9, alpha: 1),
													 inlayColor: SKColor(red: 0.086, green: 0.584, blue: 0.706, alpha: 1.000),
													 majorMarkColor: SKColor(white: 0.9, alpha: 1.0),
													 minorMarkColor: SKColor(white: 0.9, alpha: 1.0),
													 handColor: .white,
													 textColor: SKColor(white: 1.0, alpha: 1.0),
													 secondHandColor: SKColor(red: 0.486, green: 0.784, blue: 0.906, alpha: 1.000),
													 alternateTextColor: SKColor(white: 0.6, alpha: 1),
													 alternateMinorMarkColor: SKColor(white: 0.6, alpha: 1),
													 alternateMajorMarkColor: SKColor(white: 0.6, alpha: 1),
													 shouldUseMasking: true)
	public static let tangerine: ColorTheme = ColorTheme(name:"tangerine", colorRegionColor: SKColor(red: 0.992, green: 0.502, blue: 0.192, alpha: 1.000),
														 faceBackgroundColor: SKColor(white: 0.9, alpha: 1),
														 inlayColor: SKColor(red: 0.992, green: 0.502, blue: 0.192, alpha: 1.000),
														 majorMarkColor: SKColor(white: 0.9, alpha: 1.0),
														 minorMarkColor: SKColor(white: 0.9, alpha: 1.0),
														 handColor: .white,
														 textColor: SKColor(white: 1.0, alpha: 1.0),
														 secondHandColor: SKColor(red: 0.992, green: 0.702, blue: 0.392, alpha: 1.000),
														 alternateTextColor: SKColor(white: 0.6, alpha: 1),
														 alternateMinorMarkColor: SKColor(white: 0.6, alpha: 1),
														 alternateMajorMarkColor: SKColor(white: 0.6, alpha: 1),
														 shouldUseMasking: true)
	public static let strawberry: ColorTheme = ColorTheme(name:"strawberry", colorRegionColor: SKColor(red: 0.831, green: 0.161, blue: 0.420, alpha: 1.000),
														  faceBackgroundColor: SKColor(white: 0.9, alpha: 1),
														  inlayColor: SKColor(red: 0.831, green: 0.161, blue: 0.420, alpha: 1.000),
														  majorMarkColor: SKColor(white: 0.9, alpha: 1.0),
														  minorMarkColor: SKColor(white: 0.9, alpha: 1.0),
														  handColor: .white,
														  textColor: SKColor(white: 1.0, alpha: 1),
														  secondHandColor: SKColor(red: 0.912, green: 0.198, blue: 0.410, alpha: 1.000),
														  alternateTextColor: SKColor(white: 0.6, alpha: 1),
														  alternateMinorMarkColor: SKColor(white: 0.6, alpha: 1),
														  alternateMajorMarkColor: SKColor(white: 0.6, alpha: 1),
														  shouldUseMasking: true)
	public static let pawn: ColorTheme = ColorTheme(name:"pawn", colorRegionColor: SKColor(red: 0.196, green: 0.329, blue: 0.275, alpha: 1.000),
													faceBackgroundColor: SKColor(red: 0.846, green: 0.847, blue: 0.757, alpha: 1.000),
													inlayColor: SKColor(red: 0.196, green: 0.329, blue: 0.275, alpha: 1.000),
													majorMarkColor: SKColor(red: 0.365, green: 0.580, blue: 0.506, alpha: 1.000),
													minorMarkColor: SKColor(red: 0.365, green: 0.580, blue: 0.506, alpha: 1.000),
													handColor: .white,
													textColor: SKColor(white: 1.0, alpha: 1),
													secondHandColor: SKColor(red: 0.912, green: 0.198, blue: 0.410, alpha: 1.000),
													alternateTextColor: SKColor(red: 0.196, green: 0.329, blue: 0.275, alpha: 1.000),
													alternateMinorMarkColor: SKColor(red: 0.196, green: 0.329, blue: 0.275, alpha: 1.000),
													alternateMajorMarkColor: SKColor(red: 0.196, green: 0.329, blue: 0.275, alpha: 1.000),
													shouldUseMasking: true)
	public static let royal: ColorTheme = ColorTheme(name:"royal", colorRegionColor: SKColor(red: 0.118, green: 0.188, blue: 0.239, alpha: 1.000),
													 faceBackgroundColor: SKColor(white: 0.9, alpha: 1.0),
													 inlayColor: SKColor(red: 0.118, green: 0.188, blue: 0.239, alpha: 1.000),
													 majorMarkColor: SKColor(red: 0.318, green: 0.388, blue: 0.539, alpha: 1.000),
													 minorMarkColor: SKColor(red: 0.318, green: 0.388, blue: 0.539, alpha: 1.000),
													 handColor: .white,
													 textColor: SKColor(white: 0.9, alpha: 1),
													 secondHandColor: SKColor(red: 0.912, green: 0.198, blue: 0.410, alpha: 1.000),
													 alternateTextColor: SKColor(red: 0.218, green: 0.288, blue: 0.439, alpha: 1.000),
													 alternateMinorMarkColor: SKColor(red: 0.218, green: 0.288, blue: 0.439, alpha: 1.000),
													 alternateMajorMarkColor: SKColor(red: 0.218, green: 0.288, blue: 0.439, alpha: 1.000),
													 shouldUseMasking: true)
	public static let marques: ColorTheme = ColorTheme(name:"marques", colorRegionColor: SKColor(red: 0.886, green: 0.141, blue: 0.196, alpha: 1.000),
													   faceBackgroundColor: SKColor(red: 0.145, green: 0.157, blue: 0.176, alpha: 1.000),
													   inlayColor: SKColor(red: 0.886, green: 0.141, blue: 0.196, alpha: 1.000),
													   majorMarkColor: SKColor(white: 1, alpha: 0.8),
													   minorMarkColor: SKColor(red: 0.145, green: 0.157, blue: 0.176, alpha: 0.5),
													   handColor: .white,
													   textColor: SKColor(white: 1, alpha: 1),
													   secondHandColor: SKColor(white: 0.9, alpha: 1),
													   alternateTextColor: SKColor(white: 1, alpha: 1),
													   alternateMinorMarkColor: SKColor(red: 0.886, green: 0.141, blue: 0.196, alpha: 0.5),
													   alternateMajorMarkColor: SKColor(white: 1, alpha: 0.8),
													   shouldUseMasking: true)
	public static let vox: ColorTheme = ColorTheme(name:"vox", colorRegionColor: SKColor(red: 0.914, green: 0.086, blue: 0.549, alpha: 1.000),
												   faceBackgroundColor: SKColor(red: 0.224, green: 0.204, blue: 0.565, alpha: 1.000),
												   inlayColor: SKColor(red: 0.224, green: 0.204, blue: 0.565, alpha: 1.000),
												   majorMarkColor: SKColor(red: 0.324, green: 0.304, blue: 0.665, alpha: 1.000),
												   minorMarkColor: SKColor(white: 0.831, alpha: 0.5),
												   handColor: .white,
												   textColor: SKColor(white: 1, alpha: 1.000),
												   secondHandColor: SKColor(red: 0.914, green: 0.486, blue: 0.949, alpha: 1.000),
												   alternateTextColor: SKColor(white: 1, alpha: 1.000),
												   alternateMinorMarkColor: SKColor(white: 0.831, alpha: 0.5),
												   alternateMajorMarkColor: SKColor(red: 0.914, green: 0.086, blue: 0.549, alpha: 1.000),
												   shouldUseMasking: true)
	public static let summer: ColorTheme = ColorTheme(name:"summer", colorRegionColor: SKColor(red: 0.969, green: 0.796, blue: 0.204, alpha: 1.000),
													  faceBackgroundColor: SKColor(red: 0.949, green: 0.482, blue: 0.188, alpha: 1.000),
													  inlayColor: SKColor(red: 0.949, green: 0.482, blue: 0.188, alpha: 1.000),
													  majorMarkColor: .white,
													  minorMarkColor: SKColor(red: 0.267, green: 0.278, blue: 0.271, alpha: 0.3),
													  handColor: SKColor(red: 0.467, green: 0.478, blue: 0.471, alpha: 1.000),
													  textColor: SKColor(red: 0.949, green: 0.482, blue: 0.188, alpha: 1.000),
													  secondHandColor: SKColor(red: 0.649, green: 0.282, blue: 0.188, alpha: 1.000),
													  alternateTextColor: .white,
													  alternateMinorMarkColor: SKColor(red: 0.267, green: 0.278, blue: 0.271, alpha: 0.3),
													  alternateMajorMarkColor: .white,
													  shouldUseMasking: true)
}

extension ColorTheme: Equatable {
	public static func ==(lhs: ColorTheme, rhs: ColorTheme) -> Bool {
		return lhs.name == rhs.name;
	}
}
