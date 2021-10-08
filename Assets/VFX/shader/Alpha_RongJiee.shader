// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:50,qpre:2,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:8105,x:32899,y:32663,varname:node_8105,prsc:2|emission-3959-OUT,alpha-5997-OUT;n:type:ShaderForge.SFN_Tex2d,id:5388,x:31794,y:32699,ptovrint:False,ptlb:Textures,ptin:_Textures,varname:_Textures,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8628-OUT;n:type:ShaderForge.SFN_Color,id:1314,x:32242,y:32574,ptovrint:False,ptlb:Diffuse_color,ptin:_Diffuse_color,varname:_Diffuse_color,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.6861628,c3:0.03529412,c4:1;n:type:ShaderForge.SFN_Multiply,id:3959,x:32551,y:32764,varname:node_3959,prsc:2|A-1314-RGB,B-5388-RGB,C-6900-RGB;n:type:ShaderForge.SFN_VertexColor,id:6900,x:32292,y:32805,varname:node_6900,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4785,x:32489,y:32924,varname:node_4785,prsc:2|A-6676-OUT,B-6900-A,C-8316-OUT,D-4900-OUT;n:type:ShaderForge.SFN_DepthBlend,id:8316,x:32158,y:33124,varname:node_8316,prsc:2|DIST-7549-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7549,x:31921,y:33124,ptovrint:False,ptlb:DepthBlendpower,ptin:_DepthBlendpower,varname:_DepthBlendpower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_SwitchProperty,id:4900,x:32158,y:33298,ptovrint:False,ptlb:Dissolve,ptin:_Dissolve,varname:_Dissolve,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5836-OUT,B-147-OUT;n:type:ShaderForge.SFN_TexCoord,id:6932,x:31684,y:33361,varname:node_6932,prsc:2,uv:1,uaff:True;n:type:ShaderForge.SFN_Tex2d,id:1774,x:31684,y:33533,ptovrint:False,ptlb:Opacily_Tex,ptin:_Opacily_Tex,varname:_Opacily_Tex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Step,id:147,x:31962,y:33380,varname:node_147,prsc:2|A-6932-U,B-1774-R;n:type:ShaderForge.SFN_Vector1,id:5836,x:31962,y:33298,varname:node_5836,prsc:2,v1:1;n:type:ShaderForge.SFN_TexCoord,id:6764,x:31064,y:32738,varname:node_6764,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:3430,x:30574,y:32440,ptovrint:False,ptlb:Tex_u_Speed,ptin:_Tex_u_Speed,varname:_Tex_u_Speed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:8691,x:30574,y:32757,ptovrint:False,ptlb:Tex_V_Speed,ptin:_Tex_V_Speed,varname:_Tex_V_Speed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Time,id:1448,x:30574,y:32561,varname:Timeuv,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9030,x:30833,y:32562,varname:node_9030,prsc:2|A-3430-OUT,B-1448-T;n:type:ShaderForge.SFN_Multiply,id:2937,x:30833,y:32738,varname:node_2937,prsc:2|A-1448-T,B-8691-OUT;n:type:ShaderForge.SFN_Append,id:552,x:31067,y:32542,varname:node_552,prsc:2|A-9030-OUT,B-2937-OUT;n:type:ShaderForge.SFN_Add,id:9497,x:31316,y:32542,varname:node_9497,prsc:2|A-552-OUT,B-6764-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:1200,x:30801,y:32923,varname:node_1200,prsc:2,uv:1,uaff:True;n:type:ShaderForge.SFN_Append,id:2687,x:31064,y:32984,varname:node_2687,prsc:2|A-1200-Z,B-1200-W;n:type:ShaderForge.SFN_Add,id:6146,x:31311,y:32874,varname:node_6146,prsc:2|A-6764-UVOUT,B-2687-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:8628,x:31586,y:32699,ptovrint:False,ptlb:UV on,ptin:_UVon,varname:_UVon,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9497-OUT,B-6146-OUT;n:type:ShaderForge.SFN_Tex2d,id:7305,x:32678,y:33108,ptovrint:False,ptlb:OpactiyTex,ptin:_OpactiyTex,varname:_OpactiyTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5997,x:32678,y:32924,varname:node_5997,prsc:2|A-4785-OUT,B-7305-A;n:type:ShaderForge.SFN_SwitchProperty,id:6676,x:32158,y:32925,ptovrint:False,ptlb:OpacitySelf,ptin:_OpacitySelf,varname:_OpacitySelf,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5388-R,B-5388-A;proporder:5388-1314-3430-8691-7549-7305-4900-8628-1774-6676;pass:END;sub:END;*/

Shader "Base/Alpha_RongJie" {
    Properties {
        _Textures ("Textures", 2D) = "white" {}
        [HDR]_Diffuse_color ("Diffuse_color", Color) = (1,0.6861628,0.03529412,1)
        _Tex_u_Speed ("Tex_u_Speed", Float ) = 0
        _Tex_V_Speed ("Tex_V_Speed", Float ) = 0
        _DepthBlendpower ("DepthBlendpower", Float ) = 0
        _OpactiyTex ("OpactiyTex", 2D) = "white" {}
        [MaterialToggle] _Dissolve ("Dissolve", Float ) = 1
        [MaterialToggle] _UVon ("UV on", Float ) = 0
        _Opacily_Tex ("Opacily_Tex", 2D) = "white" {}
        [MaterialToggle] _OpacitySelf ("OpacitySelf", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="AlphaTest+50"
            "RenderType"="Transparent"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform sampler2D _Textures; uniform float4 _Textures_ST;
            uniform float4 _Diffuse_color;
            uniform float _DepthBlendpower;
            uniform fixed _Dissolve;
            uniform sampler2D _Opacily_Tex; uniform float4 _Opacily_Tex_ST;
            uniform float _Tex_u_Speed;
            uniform float _Tex_V_Speed;
            uniform fixed _UVon;
            uniform sampler2D _OpactiyTex; uniform float4 _OpactiyTex_ST;
            uniform fixed _OpacitySelf;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 texcoord1 : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 uv1 : TEXCOORD1;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
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
                float4 Timeuv = _Time;
                float2 _UVon_var = lerp( (float2((_Tex_u_Speed*Timeuv.g),(Timeuv.g*_Tex_V_Speed))+i.uv0), (i.uv0+float2(i.uv1.b,i.uv1.a)), _UVon );
                float4 _Textures_var = tex2D(_Textures,TRANSFORM_TEX(_UVon_var, _Textures));
                float3 emissive = (_Diffuse_color.rgb*_Textures_var.rgb*i.vertexColor.rgb);
                float3 finalColor = emissive;
                float4 _Opacily_Tex_var = tex2D(_Opacily_Tex,TRANSFORM_TEX(i.uv0, _Opacily_Tex));
                float4 _OpactiyTex_var = tex2D(_OpactiyTex,TRANSFORM_TEX(i.uv0, _OpactiyTex));
                fixed4 finalRGBA = fixed4(finalColor,((lerp( _Textures_var.r, _Textures_var.a, _OpacitySelf )*i.vertexColor.a*saturate((sceneZ-partZ)/_DepthBlendpower)*lerp( 1.0, step(i.uv1.r,_Opacily_Tex_var.r), _Dissolve ))*_OpactiyTex_var.a));
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
