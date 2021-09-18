// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:8105,x:33153,y:32691,varname:node_8105,prsc:2|emission-9470-OUT,alpha-921-OUT,voffset-3970-OUT;n:type:ShaderForge.SFN_Tex2d,id:1879,x:32023,y:32912,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:_Diffuse,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2630-OUT;n:type:ShaderForge.SFN_Multiply,id:3970,x:32885,y:33195,varname:node_3970,prsc:2|A-1879-RGB,B-3527-OUT,C-6180-W;n:type:ShaderForge.SFN_NormalVector,id:3527,x:32636,y:33300,prsc:2,pt:False;n:type:ShaderForge.SFN_TexCoord,id:6180,x:32023,y:33124,varname:node_6180,prsc:2,uv:1,uaff:True;n:type:ShaderForge.SFN_Color,id:7228,x:32301,y:32424,ptovrint:False,ptlb:SmokeColor,ptin:_SmokeColor,varname:_SmokeColor,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.5172414,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:493,x:32456,y:33013,ptovrint:False,ptlb:BlomeColor,ptin:_BlomeColor,varname:_BlomeColor,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1397059,c2:0.0260142,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:9470,x:32916,y:32792,varname:node_9470,prsc:2|A-2084-OUT,B-7683-OUT,T-7024-OUT;n:type:ShaderForge.SFN_Step,id:7024,x:32697,y:32937,varname:node_7024,prsc:2|A-6180-Z,B-1879-R;n:type:ShaderForge.SFN_Multiply,id:7755,x:32301,y:32630,varname:node_7755,prsc:2|A-1879-R,B-9915-OUT;n:type:ShaderForge.SFN_Vector1,id:9915,x:32075,y:32650,varname:node_9915,prsc:2,v1:1.1;n:type:ShaderForge.SFN_Step,id:197,x:32498,y:32609,varname:node_197,prsc:2|A-6180-Z,B-7755-OUT;n:type:ShaderForge.SFN_Color,id:4519,x:32075,y:32442,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:_Color2,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:2084,x:32697,y:32569,varname:node_2084,prsc:2|A-7228-RGB,B-4519-RGB,T-197-OUT;n:type:ShaderForge.SFN_Tex2d,id:228,x:32636,y:33086,ptovrint:False,ptlb:Opa,ptin:_Opa,varname:_Opa,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Step,id:921,x:32885,y:33045,varname:node_921,prsc:2|A-228-R,B-6180-U;n:type:ShaderForge.SFN_Tex2d,id:947,x:32456,y:32777,ptovrint:False,ptlb:SmokeTex,ptin:_SmokeTex,varname:_SmokeTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2630-OUT;n:type:ShaderForge.SFN_Multiply,id:7683,x:32697,y:32812,varname:node_7683,prsc:2|A-947-RGB,B-493-RGB;n:type:ShaderForge.SFN_TexCoord,id:182,x:31475,y:32887,varname:node_182,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:6078,x:31179,y:32919,ptovrint:False,ptlb:Tex_u_Speed,ptin:_Tex_u_Speed,varname:_Tex_u_Speed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:4031,x:31179,y:33234,ptovrint:False,ptlb:Tex_V_Speed,ptin:_Tex_V_Speed,varname:_Tex_V_Speed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Time,id:5457,x:31179,y:33034,varname:Timeuv,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9012,x:31475,y:33065,varname:node_9012,prsc:2|A-6078-OUT,B-5457-T;n:type:ShaderForge.SFN_Multiply,id:6032,x:31475,y:33213,varname:node_6032,prsc:2|A-5457-T,B-4031-OUT;n:type:ShaderForge.SFN_Append,id:7871,x:31706,y:33091,varname:node_7871,prsc:2|A-9012-OUT,B-6032-OUT;n:type:ShaderForge.SFN_Add,id:2630,x:31706,y:32887,varname:Uvadd,prsc:2|A-182-UVOUT,B-7871-OUT;proporder:1879-493-7228-4519-228-947-6078-4031;pass:END;sub:END;*/

Shader "Base/Fire/Bomb" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        [HDR]_BlomeColor ("BlomeColor", Color) = (0.1397059,0.0260142,0,1)
        [HDR]_SmokeColor ("SmokeColor", Color) = (1,0.5172414,0,1)
        [HDR]_Color2 ("Color2", Color) = (0.5,0.5,0.5,1)
        _Opa ("Opa", 2D) = "white" {}
        _SmokeTex ("SmokeTex", 2D) = "white" {}
        _Tex_u_Speed ("Tex_u_Speed", Float ) = 0
        _Tex_V_Speed ("Tex_V_Speed", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
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
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _SmokeColor;
            uniform float4 _BlomeColor;
            uniform float4 _Color2;
            uniform sampler2D _Opa; uniform float4 _Opa_ST;
            uniform sampler2D _SmokeTex; uniform float4 _SmokeTex_ST;
            uniform float _Tex_u_Speed;
            uniform float _Tex_V_Speed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 uv1 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 Timeuv = _Time;
                float2 Uvadd = (o.uv0+float2((_Tex_u_Speed*Timeuv.g),(Timeuv.g*_Tex_V_Speed)));
                float4 _Diffuse_var = tex2Dlod(_Diffuse,float4(TRANSFORM_TEX(Uvadd, _Diffuse),0.0,0));
                v.vertex.xyz += (_Diffuse_var.rgb*v.normal*o.uv1.a);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 Timeuv = _Time;
                float2 Uvadd = (i.uv0+float2((_Tex_u_Speed*Timeuv.g),(Timeuv.g*_Tex_V_Speed)));
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(Uvadd, _Diffuse));
                float4 _SmokeTex_var = tex2D(_SmokeTex,TRANSFORM_TEX(Uvadd, _SmokeTex));
                float3 emissive = lerp(lerp(_SmokeColor.rgb,_Color2.rgb,step(i.uv1.b,(_Diffuse_var.r*1.1))),(_SmokeTex_var.rgb*_BlomeColor.rgb),step(i.uv1.b,_Diffuse_var.r));
                float3 finalColor = emissive;
                float4 _Opa_var = tex2D(_Opa,TRANSFORM_TEX(i.uv0, _Opa));
                fixed4 finalRGBA = fixed4(finalColor,step(_Opa_var.r,i.uv1.r));
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
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Tex_u_Speed;
            uniform float _Tex_V_Speed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 uv1 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 Timeuv = _Time;
                float2 Uvadd = (o.uv0+float2((_Tex_u_Speed*Timeuv.g),(Timeuv.g*_Tex_V_Speed)));
                float4 _Diffuse_var = tex2Dlod(_Diffuse,float4(TRANSFORM_TEX(Uvadd, _Diffuse),0.0,0));
                v.vertex.xyz += (_Diffuse_var.rgb*v.normal*o.uv1.a);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
