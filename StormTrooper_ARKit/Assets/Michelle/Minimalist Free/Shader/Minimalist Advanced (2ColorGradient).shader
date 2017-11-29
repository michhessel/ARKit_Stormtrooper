﻿shader "Minimalist Free/2 Color Gradient/Advanced" {
	Properties{
		_MainTexture ("Main Texture", 2D) = "white" {}
		_MainTexturePower ("Main Texture Power", Range(0, 10.0)) = 1

		//Forward
		[HideInInspector][MaterialToggle] _UseGradient_F ("Use Gradient", Float ) = 0
		_Color1_F("Forward Color 1",  Color) = (1, 1, 1, 1)
		_Color2_F("Forward Color 2",  Color) = (1, 1, 1, 1)
		_GradientYStartPos_F ("Forward Gradient start Y", Float) = 0
		_GradientHeight_F("Forward Gradient Height", Float) = 10

		//Backward
		[HideInInspector][MaterialToggle] _UseGradient_B ("Use Gradient", Float ) = 0
		_Color1_B("Backward Color 1", Color) = (1, 1, 1, 1)
		_Color2_B("Backward Color 2", Color) = (1, 1, 1, 1)
		_GradientYStartPos_B ("Backward Gradient start Y", Float) = 0
		_GradientHeight_B("Backward Gradient Height", Float) = 10

		//Left
		[HideInInspector][MaterialToggle] _UseGradient_L ("Use Gradient", Float ) = 0
		_Color1_L("Left Color 1",     Color) = (1, 1, 1, 1)
		_Color2_L("Left Color 2",     Color) = (1, 1, 1, 1)
		_GradientYStartPos_L ("Left Gradient start Y", Float) = 0
		_GradientHeight_L("Left Gradient Height", Float) = 10

		//Right
		[HideInInspector][MaterialToggle] _UseGradient_R ("Use Gradient", Float ) = 0
		_Color1_R("Right Color 1",    Color) = (1, 1, 1, 1)
		_Color2_R("Right Color 2",    Color) = (1, 1, 1, 1)
		_GradientYStartPos_R ("Right Gradient start Y", Float) = 0
		_GradientHeight_R("Right Gradient Height", Float) = 10

		//Top Bottom
		_Color_T ("Top Color",        Color) = (1, 1, 1, 1)
		_Color_D ("Bottom Color",     Color) = (1, 1, 1, 1)

		_AmbientColor("Ambient Color",Color) = (1, 1, 1, 1)
		_AmbientPower("Ambient Power", Range(0, 2.0)) = 0

		[MaterialToggle] _LocalSpace ("Local Space", Float ) = 0
		[MaterialToggle] _DontMix ("Don't Mix Color", Float ) = 0
		[MaterialToggle] _Fog ("Fog", Float ) = 0
		[MaterialToggle] _RealtimeShadow ("RealTime Shadow", Float ) = 0
		_ShadowColor("ShadowColor",    Color) = (0.1, 0.1, 0.1, 1)

		[MaterialToggle] _LM ("Enable Lightmap", Float ) = 0
		_LMColor ("LightMap Color", Color) = (1, 1, 1, 1)
		_LMPower ("LightMap Power", Range(0, 5.0)) = 0
	}

	SubShader{
		Tags { "QUEUE"="Geometry" "RenderType"="Opaque" "LIGHTMODE"="ForwardBase"}

		Pass{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fwdbase_fullshadows

			#include "UnityCG.cginc"

			struct vertexInput{
				float4 vertex : POSITION;
			};

			struct vertexOutput{
				float4 vertex : SV_POSITION;
			};

			vertexOutput vert(vertexInput v)
			{
				vertexOutput o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				return o;
			}

			fixed4 frag(vertexOutput i) : COLOR
			{
				 return  fixed4(1, 1, 1, 1);
			}

			ENDCG
		}
	}

	FallBack "Standard"
    CustomEditor "MinimalistFreeAdvancedMat"
}