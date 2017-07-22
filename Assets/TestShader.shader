Shader "Yojin/Test_01"{
	Properties{
		_Color("Color", Color) = (1,1,1,1)
		_Vector("Vector", Vector) = (1,2,3,4)
		_Int("Int", Int) = 999
		_Float("Float", Float) = 88.88
		_Range("Range", Range(1, 10)) = 5
		_2DTexture("2DTexture", 2D) = "red"{}
		_Cube("Cube", Cube) = "white"{}
		_3DTexture("3DTexture", 3D) = "black"{}
	}

	SubShader{
		Pass{
			CGPROGRAM
			float4 _Color;
			float _Vector;
			float _Int;
			float _Float;
			float _Range;
			sampler2D _2DTexture;
			samplerCube _Cube;
			sampler3D _3DTexture;

			ENDCG
		}
	}

	Fallback "VertexLit"
}