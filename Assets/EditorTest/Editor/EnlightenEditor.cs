/*----------------------------------------------------------------
            // Copyright © 2017 Jhon
            // 
            // FileName: EnlightenEditor.cs
			// Describle:
			// Created By:  Jhon_朱俊强
			// Date&Time:  
            // Modify History: 
            //
//----------------------------------------------------------------*/

using UnityEngine;
using UnityEditor;
using System;

namespace JhonKit
{
    #region [Enum]
    public enum HaloEnum
    {
        Hi,
        Halo,
        Hello,
        Wow,
    }
    #endregion

    public class EnlightenEditor : EditorWindow
    {
        #region [Fields]
        private Vector2 mEditorSVPos = Vector2.zero;

        private Vector2 SceneMousPos;
        private GameObject mSceneRayHitObj;

        private GUIContent Tittletexture
        {
            get
            {
                if (null == _titleTexture)
                {
                    _titleTexture = EditorGUIUtility.IconContent("editicon.sml");
                }
                return _titleTexture;
            }
        }
        private GUIContent _titleTexture;

        private string mLableStr = "这是不可输入，不可选的文本";
        private string mCustomStr = "这是自定义文本样式";
        private string mLabelField = "可选，不可输入";

        private string mTextField = "文本输入框";
        private int mIntField = 354888562;
        private float mFloatField = 0.354888562f;

        private string mTextArea = "文本输入区域";
        private string mPasswordField_1 = string.Empty;
        private string mPasswordField_2 = string.Empty;

        private float mSlider = 0;
        private float mMinValue = 0;
        private float mMaxValue = 20;

        private bool mToggle = false;

        private int mToolbarIndex = 0;
        private string[] mToolbarOptions = new string[]
        {
            "ToolbarOption_1",
            "ToolbarOption_2",
            "ToolbarOption_3",
        };

        private HaloEnum mEnumPopup = HaloEnum.Halo;
        private HaloEnum mEnumMaskField = HaloEnum.Halo;

        private int mPopupIndex = 0;
        private string[] mPopupOptions = new string[]
        {
            "PopupOption_1",
            "PopupOption_2",
            "PopupOption_3",
        };
        private int mIntPopupIndex = 0;
        private string[] mIntPopupOptions = new string[]
        {
            "IntPopupOption_1",
            "IntPopupOption_2",
            "IntPopupOption_3",
        };
        private int[] mIntPopupSizes = new int[] { 354, 888, 562 };

        private string mTagField = string.Empty;

        private int mLayerField = 0;

        private int mMaskFieldIndex = 0;
        private string[] mMaskFieldOptions = new string[]
        {
            "MaskFieldOption_1",
            "MaskFieldOption_2",
            "MaskFieldOption_3",
        };

        private Color mColorField = Color.green;

        private Vector3 mVector3Field = Vector3.zero;

        private Rect mRectField;

        private UnityEngine.Object mObjectField;

        private Rect mSecWindowRect;
        private bool mDrawSecWindow = false;

        private bool mDrawGraphWindow = false;

        private int mCapSize = -40;
        private Vector3 mCapEuler = Vector3.zero;

        private string mOpenFilePanel;
        #endregion

        #region [MenuItem]
        [MenuItem("JhonKit/EnlightenEditor")]
        public static void MenuInter()
        {
            EditorWindow.GetWindow<EnlightenEditor>();
        }
        #endregion

        #region [CalllFormSys]
        public void OnFocus() { Debug.Log("OnFocus"); }
        public void OnLostFocus() { Debug.Log("OnLostFocus"); }
        public void OnProjectChange() { Debug.Log("OnProjectChange"); }
        public void OnSelectionChange() { Debug.Log("OnSelectionChange"); }
        public void OnEnable()
        {
            this.titleContent = new GUIContent("Enlighten", Tittletexture.image, "Tech How Editor Work");
            this.minSize = new Vector2(600f, 300f);
            this.wantsMouseMove = true;

            SceneView.onSceneGUIDelegate += SceneGUI;

            Debug.Log("OnEnable");
        }
        public void OnDisable()
        {
            SceneView.onSceneGUIDelegate -= SceneGUI;

            Debug.Log("OnDisable");
        }
        public void OnGUI()
        {
            GUI.enabled = !EditorApplication.isCompiling;

            using (new EditorGUI.DisabledGroupScope(mDrawSecWindow || mDrawGraphWindow))
            {
                using (var tempSV = new EditorGUILayout.ScrollViewScope(mEditorSVPos))
                {
                    mEditorSVPos = tempSV.scrollPosition;

                    EditorGUILayout.Space();

                    GroupExample("BaseAPI", BaseAPI);
                    GroupExample("PasswordField", PasswordField);
                    GroupExample("Slider", Slider);
                    GroupExample("Toggle", Toggle);
                    GroupExample("Toolbar", Toolbar);
                    GroupExample("Popup", Popup);
                    GroupExample("UnityProperty", UnityProperty);
                    GroupExample("OtherEdiotorUtility", OtherEdiotorUtility);
                }
            }

            if (mDrawSecWindow == true)
            {
                BeginWindows();
                mSecWindowRect = GUILayout.Window(354888562, mSecWindowRect, SecondWindow, "二级弹窗", GUI.skin.window);
                EndWindows();
            }

            if (mDrawGraphWindow == true)
            {
                BeginWindows();
                mSecWindowRect = GUILayout.Window(354888, mSecWindowRect, DrawGraphWindow, "图形绘制", GUI.skin.window);
                EndWindows();
            }
        }
        #endregion

        #region [Kit]
        private void GroupExample(string varGroupName, Action varBusiness)
        {
            if (string.IsNullOrEmpty(varGroupName) == false) GUILayout.Label(varGroupName);
            using (new EditorGUILayout.VerticalScope(GUI.skin.box))
            {
                if (null != varBusiness) varBusiness();
            }
            EditorGUILayout.Space();
        }
        #endregion

        #region [Business]
        private void BaseAPI()
        {
            GUILayout.Label(mLableStr);

            EditorGUILayout.SelectableLabel(mLabelField);
            
            EditorGUILayout.LabelField("LabelField", mLabelField);

            mTextField = EditorGUILayout.TextField("TextField", mTextField);
            mIntField = EditorGUILayout.IntField("IntField", mIntField);
            mFloatField = EditorGUILayout.FloatField("FloatField", mFloatField);

            mTextArea = EditorGUILayout.TextArea(mTextArea, GUILayout.Height(40));

            GUIStyle tempFontStyle = new GUIStyle();
            tempFontStyle.normal.background = null;
            tempFontStyle.normal.textColor = Color.yellow;
            tempFontStyle.fontStyle = FontStyle.BoldAndItalic;
            tempFontStyle.fontSize = 18;
            GUILayout.Label(mCustomStr, tempFontStyle);
        }
        private void PasswordField()
        {
            using (new EditorGUILayout.HorizontalScope())
            {
                GUILayout.Label("PasswordField_1");
                mPasswordField_1 = GUILayout.PasswordField(mPasswordField_1, '*');
            }
            mPasswordField_2 = EditorGUILayout.PasswordField("PasswordField_2", mPasswordField_2);
        }
        private void Slider()
        {
            mSlider = EditorGUILayout.Slider("Slider", mSlider, 0.0f, 49.9f);
            EditorGUILayout.MinMaxSlider(new GUIContent("MinMaxSlider"), ref mMinValue, ref mMaxValue, 0, 100);
        }
        private void Toggle()
        {
            mToggle = GUILayout.Toggle(mToggle, "Toggle");
            mToggle = EditorGUILayout.Toggle(new GUIContent("Toggle"), mToggle);
        }
        private void Toolbar()
        {
            mToolbarIndex = GUILayout.Toolbar(mToolbarIndex, mToolbarOptions);
            EditorGUILayout.LabelField("Selected Toobar", mToolbarOptions[mToolbarIndex]);
        }
        private void Popup()
        {
            mEnumPopup = (HaloEnum)EditorGUILayout.EnumPopup("EnumPopup", mEnumPopup);
            mEnumMaskField = (HaloEnum)EditorGUILayout.EnumMaskField("EnumMaskField", mEnumMaskField);
            mPopupIndex = EditorGUILayout.Popup("Popup", mPopupIndex, mPopupOptions);

            using (new EditorGUILayout.HorizontalScope())
            {
                mIntPopupIndex = EditorGUILayout.IntPopup("IntPopup", mIntPopupIndex, mIntPopupOptions, mIntPopupSizes);
                EditorGUILayout.LabelField("Selected IntPopup", mIntPopupIndex.ToString());
            }

            mTagField = EditorGUILayout.TagField("TagField", mTagField);

            mLayerField = EditorGUILayout.LayerField("LayerField", mLayerField);

            mMaskFieldIndex = EditorGUILayout.MaskField("MaskField", mMaskFieldIndex, mMaskFieldOptions);

            mColorField = EditorGUILayout.ColorField("ColorField", mColorField);
        }
        private void UnityProperty()
        {
            Color tempOrgColor = GUI.backgroundColor;

            using (new EditorGUILayout.VerticalScope(GUI.skin.box))
            {
                //修改背景颜色;
                GUI.backgroundColor = Color.gray;
                mVector3Field = EditorGUILayout.Vector3Field("Vector3Field", mVector3Field);
                GUI.backgroundColor = tempOrgColor;
            }

            mObjectField = EditorGUILayout.ObjectField(new GUIContent("ObjectField"), mObjectField, typeof(GameObject), true);

            using (new EditorGUILayout.VerticalScope(GUI.skin.box))
            {
                //修改背景颜色;
                GUI.backgroundColor = Color.green;
                mRectField = EditorGUILayout.RectField("RectField", mRectField);
                GUI.backgroundColor = tempOrgColor;
            }
        }
        private void OtherEdiotorUtility()
        {
            if (GUILayout.Button(new GUIContent("弹出系统提示消息", "调用系统级别的提示信息")))
            {
                ShowNotification(new GUIContent("这是来自 ShowNotification 的弹窗消息"));
            }

            bool tempButtonChange = false;

            if (GUILayout.Button(new GUIContent("显示二级窗口", "窗口内的二级弹窗"))) { mDrawSecWindow = true; tempButtonChange = true; }
            if (GUILayout.Button(new GUIContent("绘制图形", "绘制图形的示例"))) { mDrawGraphWindow = true; tempButtonChange = true; }
            if (tempButtonChange && (mDrawGraphWindow || mDrawSecWindow))
            {
                mSecWindowRect = new Rect((int)position.width >> 2, (int)position.height >> 2, (int)position.width >> 1, (int)position.height >> 1);
            }

            EditorGUILayout.Space();

            using (new EditorGUILayout.VerticalScope(GUI.skin.box))
            {
                GUILayout.Label("EditorUtility相关");
                if (string.IsNullOrEmpty(mOpenFilePanel) == false)
                {
                    EditorGUILayout.LabelField("OpenFilePanel SelectPath", mOpenFilePanel);
                }

                using (new EditorGUILayout.HorizontalScope(GUI.skin.scrollView))
                {
                    if (GUILayout.Button("OpenFilePanel"))
                    {
                        mOpenFilePanel = EditorUtility.OpenFilePanel("OpenFilePanel", "Assets", "*");
                    }

                    if (GUILayout.Button("RevealInFinder"))
                    {
                        EditorUtility.RevealInFinder(mOpenFilePanel);
                    }
                }

                if (GUILayout.Button("DisplayDialog"))
                {
                    bool tempResult = EditorUtility.DisplayDialog("这是一个系统二次确认窗口", "文本内容", "确认", "取消");
                    string tempTip = tempResult ? "你按下了二次确认" : "你取消了二次确认";
                    ShowNotification(new GUIContent(tempTip));
                }
                
            }
        }
        private void SceneGUI(SceneView varSceneView)
        {
            if (Event.current.type != EventType.MouseMove) return;

            SceneMousPos = Event.current.mousePosition;
            mSceneRayHitObj = null;
            RaycastHit tempRayHit;
            Ray tempRay = HandleUtility.GUIPointToWorldRay(Event.current.mousePosition);
            if (true == Physics.Raycast(tempRay, out tempRayHit))
            {
                mSceneRayHitObj = tempRayHit.collider.gameObject;
            }
        }
        private void SecondWindow(int varWindowID)
        {
            Application.targetFrameRate = EditorGUILayout.IntSlider("限定帧率", Application.targetFrameRate, 10, 300);
            Application.runInBackground = EditorGUILayout.Toggle("允许Unity后台运行", Application.runInBackground);
            mObjectField = EditorGUILayout.ObjectField(new GUIContent("ObjectField"), mObjectField, typeof(GameObject), true);
            EditorGUILayout.Vector3Field("鼠标在Scene视图的坐标", SceneMousPos);
            EditorGUILayout.Vector3Field("鼠标在当前二级窗口坐标", Event.current.mousePosition);
            mSceneRayHitObj = (GameObject)EditorGUILayout.ObjectField("当前鼠标所在的GameObject", mSceneRayHitObj != null ? mSceneRayHitObj : null, typeof(GameObject), true);

            GUILayout.Label("UsedTextureCount: " + UnityStats.usedTextureCount);
            GUILayout.Label("UsedTextureMemorySize: " + (UnityStats.usedTextureMemorySize / 1000000f + "Mb"));
            GUILayout.Label("RenderTextureCount: " + UnityStats.renderTextureCount);
            GUILayout.Label("FrameTime: " + UnityStats.frameTime);
            GUILayout.Label("RenderTime: " + UnityStats.renderTime);
            GUILayout.Label("DrawCalls: " + UnityStats.drawCalls);
            GUILayout.Label("Batchs: " + UnityStats.batches);
            GUILayout.Label("Static Batch DC: " + UnityStats.staticBatchedDrawCalls);
            GUILayout.Label("Static Batch: " + UnityStats.staticBatches);
            GUILayout.Label("DynamicBatch DC: " + UnityStats.dynamicBatchedDrawCalls);
            GUILayout.Label("DynamicBatch: " + UnityStats.dynamicBatches);
            GUILayout.Label("Triangles: " + UnityStats.triangles);
            GUILayout.Label("Vertices: " + UnityStats.vertices);

            if (GUILayout.Button("关闭二级窗口")) { mDrawSecWindow = false; }
            GUI.DragWindow();
        }
        private void DrawGraphWindow(int varWindowID)
        {
            mCapSize = EditorGUILayout.IntField("Size", mCapSize);
            mCapEuler = EditorGUILayout.Vector3Field("旋转角度", mCapEuler);

            if (GUILayout.Button("关闭绘制图形")) { mDrawGraphWindow = false; }

            Handles.color = Color.red;
            Handles.DrawLine(new Vector2(75, 100), new Vector3(150, 200));

            Handles.color = Color.yellow;
            Handles.CircleCap(1, new Vector2(300, 150), Quaternion.identity, mCapSize);

            Handles.color = Color.blue;
            Handles.CubeCap(3, new Vector2(300, 250), Quaternion.Euler(mCapEuler), mCapSize);
            
            Handles.color = Color.green;
            Handles.SphereCap(2, new Vector2(100, 250), Quaternion.Euler(mCapEuler), mCapSize);

            Handles.color = Color.gray;
            Handles.CylinderCap(4, new Vector2(100, 350), Quaternion.Euler(mCapEuler), mCapSize);

            Handles.color = Color.magenta;
            Handles.ConeCap(5, new Vector2(300, 350), Quaternion.Euler(mCapEuler), mCapSize);

            GUI.DragWindow();
        }
        #endregion
    }
}