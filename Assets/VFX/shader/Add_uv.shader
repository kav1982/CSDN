// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:8105,x:33186,y:32704,varname:node_8105,prsc:2|emission-9540-OUT;n:type:ShaderForge.SFN_Tex2d,id:5388,x:32224,y:32669,ptovrint:False,ptlb:Textures,ptin:_Textures,varname:node_5388,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2416-OUT;n:type:ShaderForge.SFN_Color,id:1314,x:32224,y:32891,ptovrint:False,ptlb:Diffuse_color,ptin:_Diffuse_color,varname:node_1314,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:3959,x:32634,y:32776,varname:node_3959,prsc:2|A-5935-OUT,B-1314-RGB,C-476-RGB,D-5388-A,E-476-A;n:type:ShaderForge.SFN_VertexColor,id:476,x:32224,y:33051,varname:node_476,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9540,x:32862,y:33022,varname:node_9540,prsc:2|A-3959-OUT,B-1314-A,C-1570-OUT;n:type:ShaderForge.SFN_DepthBlend,id:1570,x:32224,y:33226,varname:node_1570,prsc:2|DIST-3482-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3482,x:32022,y:33285,ptovrint:False,ptlb:DepthBlendPower,ptin:_DepthBlendPower,varname:node_3482,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_TexCoord,id:7682,x:31723,y:32595,varname:node_7682,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:4813,x:31163,y:32742,ptovrint:False,ptlb:Tex_u_Speed,ptin:_Tex_u_Speed,varname:node_1747,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:9544,x:31163,y:32988,ptovrint:False,ptlb:Tex_V_Speed,ptin:_Tex_V_Speed,varname:node_4887,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Time,id:3437,x:31188,y:32803,varname:node_3437,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6182,x:31447,y:32787,varname:node_6182,prsc:2|A-4813-OUT,B-3437-T;n:type:ShaderForge.SFN_Multiply,id:7825,x:31447,y:32958,varname:node_7825,prsc:2|A-3437-T,B-9544-OUT;n:type:ShaderForge.SFN_Append,id:1160,x:31746,y:32820,varname:node_1160,prsc:2|A-6182-OUT,B-7825-OUT;n:type:ShaderForge.SFN_Add,id:2416,x:32000,y:32704,varname:node_2416,prsc:2|A-7682-UVOUT,B-1160-OUT;n:type:ShaderForge.SFN_Tex2d,id:1636,x:32109,y:32261,ptovrint:False,ptlb:TextureB,ptin:_TextureB,varname:node_1636,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3344-OUT;n:type:ShaderForge.SFN_Add,id:3344,x:31868,y:32047,varname:node_3344,prsc:2|A-3665-UVOUT,B-4412-OUT;n:type:ShaderForge.SFN_TexCoord,id:3665,x:31411,y:32004,varname:node_3665,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:7303,x:31179,y:32194,ptovrint:False,ptlb:Bext_U_Speed,ptin:_Bext_U_Speed,varname:node_7303,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Time,id:6641,x:31179,y:32264,varname:node_6641,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:2079,x:31204,y:32443,ptovrint:False,ptlb:Bext_V_Speed_copy,ptin:_Bext_V_Speed_copy,varname:_Bext_U_Speed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:4,x:31475,y:32386,varname:node_4,prsc:2|A-6641-T,B-2079-OUT;n:type:ShaderForge.SFN_Multiply,id:5235,x:31457,y:32205,varname:node_5235,prsc:2|A-7303-OUT,B-6641-T;n:type:ShaderForge.SFN_Append,id:4412,x:31715,y:32205,varname:node_4412,prsc:2|A-5235-OUT,B-4-OUT;n:type:ShaderForge.SFN_Multiply,id:5935,x:32405,y:32551,varname:node_5935,prsc:2|A-1636-RGB,B-5388-RGB;proporder:5388-1314-4813-9544-1636-7303-2079-3482;pass:END;sub:END;*/

Shader "Base/Add_uv" {
    Properties {
        _Textures ("Textures", 2D) = "white" {}
        [HDR]_Diffuse_color ("Diffuse_color", Color) = (0.5,0.5,0.5,1)
        _Tex_u_Speed ("Tex_u_Speed", Float ) = 0
        _Tex_V_Speed ("Tex_V_Speed", Float ) = 0
        _TextureB ("TextureB", 2D) = "white" {}
        _Bext_U_Speed ("Bext_U_Speed", Float ) = 0
        _Bext_V_Speed_copy ("Bext_V_Speed_copy", Float ) = 0
        _DepthBlendPower ("DepthBlendPower", Float ) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform sampler2D _Textures; uniform float4 _Textures_ST;
            uniform float4 _Diffuse_color;
            uniform float _DepthBlendPower;
            uniform float _Tex_u_Speed;
            uniform float _Tex_V_Speed;
            uniform sampler2D _TextureB; uniform float4 _TextureB_ST;
            uniform float _Bext_U_Speed;
            uniform float _Bext_V_Speed_copy;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
////// Emissive:
                float4 node_6641 = _Time;
                float2 node_3344 = (i.uv0+float2((_Bext_U_Speed*node_6641.g),(node_6641.g*_Bext_V_Speed_copy)));
                float4 _TextureB_var = tex2D(_TextureB,TRANSFORM_TEX(node_3344, _TextureB));
                float4 node_3437 = _Time;
                float2 node_2416 = (i.uv0+float2((_Tex_u_Speed*node_3437.g),(node_3437.g*_Tex_V_Speed)));
                float4 _Textures_var = tex2D(_Textures,TRANSFORM_TEX(node_2416, _Textures));
                float3 emissive = (((_TextureB_var.rgb*_Textures_var.rgb)*_Diffuse_color.rgb*i.vertexColor.rgb*_Textures_var.a*i.vertexColor.a)*_Diffuse_color.a*saturate((sceneZ-partZ)/_DepthBlendPower));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
