package com.miui.maml.util;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import miui.content.res.ThemeNativeUtils;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class ConfigFile
{
  public static final String DATA = "data";
  private static final String LOG_TAG = "ConfigFile";
  private static final String METHOD = "saveConfigFile";
  public static final String PATH = "path";
  public static final String TAG_APP_PICKER = "AppPicker";
  public static final String TAG_CHECK_BOX = "CheckBox";
  private static final String TAG_GADGET = "Gadget";
  private static final String TAG_GADGETS = "Gadgets";
  public static final String TAG_GROUP = "Group";
  public static final String TAG_IMAGE_PICKER = "ImagePicker";
  public static final String TAG_NUMBER_CHOICE = "NumberChoice";
  public static final String TAG_NUMBER_INPUT = "NumberInput";
  private static final String TAG_ROOT = "Config";
  public static final String TAG_STRING_CHOICE = "StringChoice";
  public static final String TAG_STRING_INPUT = "StringInput";
  private static final String TAG_TASK = "Intent";
  private static final String TAG_TASKS = "Tasks";
  private static final String TAG_VARIABLE = "Variable";
  private static final String TAG_VARIABLES = "Variables";
  private static final String URI = "content://com.miui.maml.provider";
  private boolean mDirty;
  private String mFilePath;
  private ArrayList<Gadget> mGadgets = new ArrayList();
  private boolean mSaveViaProvider;
  private HashMap<String, Task> mTasks = new HashMap();
  private HashMap<String, Variable> mVariables = new HashMap();
  
  private void createNewFile(String paramString)
    throws IOException
  {
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = new File(paramString);
      paramString.getParentFile().mkdirs();
      paramString.delete();
      paramString.createNewFile();
    }
  }
  
  /* Error */
  private boolean load(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: putfield 154	com/miui/maml/util/ConfigFile:mFilePath	Ljava/lang/String;
    //   5: aload_0
    //   6: getfield 106	com/miui/maml/util/ConfigFile:mVariables	Ljava/util/HashMap;
    //   9: invokevirtual 157	java/util/HashMap:clear	()V
    //   12: aload_0
    //   13: getfield 108	com/miui/maml/util/ConfigFile:mTasks	Ljava/util/HashMap;
    //   16: invokevirtual 157	java/util/HashMap:clear	()V
    //   19: invokestatic 163	javax/xml/parsers/DocumentBuilderFactory:newInstance	()Ljavax/xml/parsers/DocumentBuilderFactory;
    //   22: astore_3
    //   23: iload_2
    //   24: ifeq +15 -> 39
    //   27: invokestatic 169	miui/content/res/ThemeResources:getSystem	()Lmiui/content/res/ThemeResourcesSystem;
    //   30: aload_1
    //   31: aconst_null
    //   32: invokevirtual 175	miui/content/res/ThemeResourcesSystem:getIconStream	(Ljava/lang/String;[J)Ljava/io/InputStream;
    //   35: astore_1
    //   36: goto +12 -> 48
    //   39: new 177	java/io/FileInputStream
    //   42: dup
    //   43: aload_1
    //   44: invokespecial 178	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   47: astore_1
    //   48: aload_1
    //   49: ifnonnull +13 -> 62
    //   52: aload_1
    //   53: ifnull +7 -> 60
    //   56: aload_1
    //   57: invokevirtual 183	java/io/InputStream:close	()V
    //   60: iconst_0
    //   61: ireturn
    //   62: aload_3
    //   63: invokevirtual 187	javax/xml/parsers/DocumentBuilderFactory:newDocumentBuilder	()Ljavax/xml/parsers/DocumentBuilder;
    //   66: aload_1
    //   67: invokevirtual 193	javax/xml/parsers/DocumentBuilder:parse	(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    //   70: invokeinterface 199 1 0
    //   75: astore_3
    //   76: aload_3
    //   77: ifnonnull +13 -> 90
    //   80: aload_1
    //   81: ifnull +7 -> 88
    //   84: aload_1
    //   85: invokevirtual 183	java/io/InputStream:close	()V
    //   88: iconst_0
    //   89: ireturn
    //   90: aload_3
    //   91: invokeinterface 205 1 0
    //   96: ldc 65
    //   98: invokevirtual 211	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   101: istore_2
    //   102: iload_2
    //   103: ifne +13 -> 116
    //   106: aload_1
    //   107: ifnull +7 -> 114
    //   110: aload_1
    //   111: invokevirtual 183	java/io/InputStream:close	()V
    //   114: iconst_0
    //   115: ireturn
    //   116: aload_0
    //   117: aload_3
    //   118: invokespecial 215	com/miui/maml/util/ConfigFile:loadVariables	(Lorg/w3c/dom/Element;)V
    //   121: aload_0
    //   122: aload_3
    //   123: invokespecial 218	com/miui/maml/util/ConfigFile:loadTasks	(Lorg/w3c/dom/Element;)V
    //   126: aload_0
    //   127: aload_3
    //   128: invokespecial 221	com/miui/maml/util/ConfigFile:loadGadgets	(Lorg/w3c/dom/Element;)V
    //   131: aload_1
    //   132: ifnull +7 -> 139
    //   135: aload_1
    //   136: invokevirtual 183	java/io/InputStream:close	()V
    //   139: iconst_1
    //   140: ireturn
    //   141: astore_3
    //   142: aload_1
    //   143: ifnull +16 -> 159
    //   146: aload_1
    //   147: invokevirtual 183	java/io/InputStream:close	()V
    //   150: goto +9 -> 159
    //   153: astore_1
    //   154: aload_3
    //   155: aload_1
    //   156: invokevirtual 227	java/lang/Throwable:addSuppressed	(Ljava/lang/Throwable;)V
    //   159: aload_3
    //   160: athrow
    //   161: astore_1
    //   162: aload_1
    //   163: invokevirtual 230	java/lang/Throwable:printStackTrace	()V
    //   166: iconst_0
    //   167: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	168	0	this	ConfigFile
    //   0	168	1	paramString	String
    //   0	168	2	paramBoolean	boolean
    //   22	106	3	localObject1	Object
    //   141	19	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   62	76	141	finally
    //   90	102	141	finally
    //   116	131	141	finally
    //   146	150	153	finally
    //   27	36	161	java/lang/Exception
    //   39	48	161	java/lang/Exception
    //   56	60	161	java/lang/Exception
    //   84	88	161	java/lang/Exception
    //   110	114	161	java/lang/Exception
    //   135	139	161	java/lang/Exception
    //   154	159	161	java/lang/Exception
    //   159	161	161	java/lang/Exception
  }
  
  private void loadGadgets(Element paramElement)
  {
    loadList(paramElement, "Gadgets", "Gadget", new OnLoadElementListener()
    {
      public void OnLoadElement(Element paramAnonymousElement)
      {
        if (paramAnonymousElement != null) {
          ConfigFile.this.putGadget(new ConfigFile.Gadget(paramAnonymousElement.getAttribute("path"), Utils.getAttrAsInt(paramAnonymousElement, "x", 0), Utils.getAttrAsInt(paramAnonymousElement, "y", 0)));
        }
      }
    });
  }
  
  private void loadList(Element paramElement, String paramString1, String paramString2, OnLoadElementListener paramOnLoadElementListener)
  {
    paramElement = Utils.getChild(paramElement, paramString1);
    if (paramElement == null) {
      return;
    }
    paramElement = paramElement.getChildNodes();
    for (int i = 0; i < paramElement.getLength(); i++)
    {
      paramString1 = paramElement.item(i);
      if ((paramString1.getNodeType() == 1) && (paramString1.getNodeName().equals(paramString2))) {
        paramOnLoadElementListener.OnLoadElement((Element)paramString1);
      }
    }
  }
  
  private void loadTasks(Element paramElement)
  {
    loadList(paramElement, "Tasks", "Intent", new OnLoadElementListener()
    {
      public void OnLoadElement(Element paramAnonymousElement)
      {
        ConfigFile.this.putTask(Task.load(paramAnonymousElement));
      }
    });
  }
  
  private void loadVariables(Element paramElement)
  {
    loadList(paramElement, "Variables", "Variable", new OnLoadElementListener()
    {
      public void OnLoadElement(Element paramAnonymousElement)
      {
        ConfigFile.this.put(paramAnonymousElement.getAttribute("name"), paramAnonymousElement.getAttribute("value"), paramAnonymousElement.getAttribute("type"));
      }
    });
  }
  
  private void put(String paramString1, String paramString2, String paramString3)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString3)))
    {
      if ((!"string".equals(paramString3)) && (!"number".equals(paramString3))) {
        return;
      }
      Variable localVariable1 = (Variable)this.mVariables.get(paramString1);
      Variable localVariable2 = localVariable1;
      if (localVariable1 == null)
      {
        localVariable2 = new Variable();
        localVariable2.name = paramString1;
        this.mVariables.put(paramString1, localVariable2);
      }
      localVariable2.type = paramString3;
      localVariable2.value = paramString2;
    }
  }
  
  private void writeGadgets(StringBuilder paramStringBuilder)
  {
    if (this.mGadgets.size() == 0) {
      return;
    }
    writeTag(paramStringBuilder, "Gadgets", false);
    Iterator localIterator = this.mGadgets.iterator();
    while (localIterator.hasNext())
    {
      Gadget localGadget = (Gadget)localIterator.next();
      String str = localGadget.path;
      int i = localGadget.x;
      int j = localGadget.y;
      writeTag(paramStringBuilder, "Gadget", new String[] { "path", "x", "y" }, new String[] { str, String.valueOf(i), String.valueOf(j) }, true);
    }
    writeTag(paramStringBuilder, "Gadgets", true);
  }
  
  private static void writeTag(StringBuilder paramStringBuilder, String paramString, boolean paramBoolean)
  {
    paramStringBuilder.append("<");
    if (paramBoolean) {
      paramStringBuilder.append("/");
    }
    paramStringBuilder.append(paramString);
    paramStringBuilder.append(">\n");
  }
  
  private static void writeTag(StringBuilder paramStringBuilder, String paramString, String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    writeTag(paramStringBuilder, paramString, paramArrayOfString1, paramArrayOfString2, true);
  }
  
  private static void writeTag(StringBuilder paramStringBuilder, String paramString, String[] paramArrayOfString1, String[] paramArrayOfString2, boolean paramBoolean)
  {
    paramStringBuilder.append("<");
    paramStringBuilder.append(paramString);
    for (int i = 0; i < paramArrayOfString1.length; i++) {
      if ((!paramBoolean) || (!TextUtils.isEmpty(paramArrayOfString2[i])))
      {
        paramStringBuilder.append(" ");
        paramStringBuilder.append(paramArrayOfString1[i]);
        paramStringBuilder.append("=\"");
        paramStringBuilder.append(paramArrayOfString2[i]);
        paramStringBuilder.append("\"");
      }
    }
    paramStringBuilder.append("/>\n");
  }
  
  private void writeTasks(StringBuilder paramStringBuilder)
  {
    if (this.mTasks.size() == 0) {
      return;
    }
    writeTag(paramStringBuilder, "Tasks", false);
    String str1 = Task.TAG_ID;
    String str2 = Task.TAG_ACTION;
    String str3 = Task.TAG_TYPE;
    String str4 = Task.TAG_CATEGORY;
    String str5 = Task.TAG_PACKAGE;
    String str6 = Task.TAG_CLASS;
    String str7 = Task.TAG_NAME;
    Iterator localIterator = this.mTasks.values().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Task)localIterator.next();
      String str8 = ((Task)localObject).id;
      String str9 = ((Task)localObject).action;
      String str10 = ((Task)localObject).type;
      String str11 = ((Task)localObject).category;
      String str12 = ((Task)localObject).packageName;
      String str13 = ((Task)localObject).className;
      localObject = ((Task)localObject).name;
      writeTag(paramStringBuilder, "Intent", new String[] { str1, str2, str3, str4, str5, str6, str7 }, new String[] { str8, str9, str10, str11, str12, str13, localObject }, true);
    }
    writeTag(paramStringBuilder, "Tasks", true);
  }
  
  private void writeVariables(StringBuilder paramStringBuilder)
  {
    if (this.mVariables.size() == 0) {
      return;
    }
    writeTag(paramStringBuilder, "Variables", false);
    Iterator localIterator = this.mVariables.values().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Variable)localIterator.next();
      String str1 = ((Variable)localObject).name;
      String str2 = ((Variable)localObject).type;
      localObject = ((Variable)localObject).value;
      writeTag(paramStringBuilder, "Variable", new String[] { "name", "type", "value" }, new String[] { str1, str2, localObject });
    }
    writeTag(paramStringBuilder, "Variables", true);
  }
  
  public Collection<Gadget> getGadgets()
  {
    return this.mGadgets;
  }
  
  public Task getTask(String paramString)
  {
    return (Task)this.mTasks.get(paramString);
  }
  
  public Collection<Task> getTasks()
  {
    return this.mTasks.values();
  }
  
  public String getVariable(String paramString)
  {
    paramString = (Variable)this.mVariables.get(paramString);
    if (paramString == null) {
      paramString = null;
    } else {
      paramString = paramString.value;
    }
    return paramString;
  }
  
  public Collection<Variable> getVariables()
  {
    return this.mVariables.values();
  }
  
  public boolean load(String paramString)
  {
    return load(paramString, false);
  }
  
  public boolean loadByIconStream(String paramString)
  {
    return load(paramString, true);
  }
  
  public void loadDefaultSettings(Element paramElement)
  {
    if ((paramElement != null) && (paramElement.getNodeName().equals("Config"))) {
      Utils.traverseXmlElementChildren(paramElement, "Group", new Utils.XmlTraverseListener()
      {
        public void onChild(Element paramAnonymousElement)
        {
          Utils.traverseXmlElementChildren(paramAnonymousElement, null, new Utils.XmlTraverseListener()
          {
            public void onChild(Element paramAnonymous2Element)
            {
              Object localObject = paramAnonymous2Element.getNodeName();
              String str1 = paramAnonymous2Element.getAttribute("id");
              if ("StringInput".equals(localObject))
              {
                ConfigFile.this.putString(str1, paramAnonymous2Element.getAttribute("default"));
              }
              else if ("CheckBox".equals(localObject))
              {
                localObject = ConfigFile.this;
                String str2 = paramAnonymous2Element.getAttribute("default");
                paramAnonymous2Element = "1";
                if (!str2.equals("1")) {
                  paramAnonymous2Element = "0";
                }
                ((ConfigFile)localObject).putNumber(str1, paramAnonymous2Element);
              }
              else
              {
                double d;
                if ("NumberInput".equals(localObject))
                {
                  d = Utils.getAttrAsFloat(paramAnonymous2Element, "default", 0.0F);
                  ConfigFile.this.putNumber(str1, Utils.doubleToString(d));
                }
                else if ("StringChoice".equals(localObject))
                {
                  ConfigFile.this.putString(str1, paramAnonymous2Element.getAttribute("default"));
                }
                else if ("NumberChoice".equals(localObject))
                {
                  d = Utils.getAttrAsFloat(paramAnonymous2Element, "default", 0.0F);
                  ConfigFile.this.putNumber(str1, Utils.doubleToString(d));
                }
                else if ("AppPicker".equals(localObject))
                {
                  ConfigFile.this.putTask(Task.load(paramAnonymous2Element));
                }
              }
            }
          });
        }
      });
    }
  }
  
  public void moveGadget(Gadget paramGadget, int paramInt)
  {
    if (this.mGadgets.remove(paramGadget)) {
      this.mGadgets.add(paramInt, paramGadget);
    }
  }
  
  public void putGadget(Gadget paramGadget)
  {
    if (paramGadget == null) {
      return;
    }
    this.mGadgets.add(paramGadget);
    this.mDirty = true;
  }
  
  public void putNumber(String paramString, double paramDouble)
  {
    putNumber(paramString, Utils.doubleToString(paramDouble));
  }
  
  public void putNumber(String paramString1, String paramString2)
  {
    put(paramString1, paramString2, "number");
    this.mDirty = true;
  }
  
  public void putString(String paramString1, String paramString2)
  {
    put(paramString1, paramString2, "string");
    this.mDirty = true;
  }
  
  public void putTask(Task paramTask)
  {
    if ((paramTask != null) && (!TextUtils.isEmpty(paramTask.id)))
    {
      this.mTasks.put(paramTask.id, paramTask);
      this.mDirty = true;
    }
  }
  
  public void removeGadget(Gadget paramGadget)
  {
    this.mGadgets.remove(paramGadget);
    this.mDirty = true;
  }
  
  public boolean save(Context paramContext)
  {
    boolean bool1 = this.mDirty;
    boolean bool2 = false;
    this.mDirty = false;
    if ((!bool1) || (save(this.mFilePath, paramContext))) {
      bool2 = true;
    }
    return bool2;
  }
  
  public boolean save(String paramString, Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    writeTag(localStringBuilder, "Config", false);
    writeVariables(localStringBuilder);
    writeTasks(localStringBuilder);
    writeGadgets(localStringBuilder);
    writeTag(localStringBuilder, "Config", true);
    if (this.mSaveViaProvider)
    {
      new SaveAsyncTask(paramContext, localStringBuilder.toString(), paramString).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
      return true;
    }
    Utils.removeFile(paramString);
    Object localObject = null;
    File localFile1 = null;
    try
    {
      createNewFile(paramString);
      paramContext = localObject;
    }
    catch (Exception paramContext)
    {
      paramString = new StringBuilder();
      paramString.append("create target file or temp file failed");
      paramString.append(paramContext);
      Log.e("ConfigFile", paramString.toString());
      return false;
    }
    catch (IOException localIOException) {}
    try
    {
      File localFile2 = paramContext.getExternalFilesDir(null);
      paramContext = localFile1;
      if (localFile2 != null)
      {
        paramContext = new java/lang/StringBuilder;
        paramContext.<init>();
        paramContext.append(localFile2.getPath());
        paramContext.append(File.separator);
        paramContext.append("temp");
        paramContext = paramContext.toString();
      }
      createNewFile(paramContext);
      try
      {
        localFile1 = new java/io/File;
        localFile1.<init>(paramString);
        if (localFile1.exists())
        {
          Utils.writeDataToFile(paramString, localStringBuilder.toString());
        }
        else
        {
          if (TextUtils.isEmpty(paramContext)) {
            break label270;
          }
          localFile1 = new java/io/File;
          localFile1.<init>(paramContext);
          if (!localFile1.exists()) {
            break label270;
          }
          Utils.writeDataToFile(paramContext, localStringBuilder.toString());
          Utils.copyFile(paramContext, paramString);
          Utils.removeFile(paramContext);
        }
        ThemeNativeUtils.updateFilePermissionWithThemeContext(paramString);
        return true;
        label270:
        Log.w("ConfigFile", "target file and temp file are not exists");
        return false;
      }
      catch (Exception paramString)
      {
        paramContext = new StringBuilder();
        paramContext.append("write file error");
        paramContext.append(paramString);
        Log.e("ConfigFile", paramContext.toString());
        return false;
      }
      return false;
    }
    catch (Exception paramString)
    {
      paramString = new StringBuilder();
      paramString.append("create target file failed");
      paramString.append(localIOException);
      Log.e("ConfigFile", paramString.toString());
    }
  }
  
  public void setSaveViaProvider(boolean paramBoolean)
  {
    this.mSaveViaProvider = paramBoolean;
  }
  
  public static class Gadget
  {
    public String path;
    public int x;
    public int y;
    
    public Gadget(String paramString, int paramInt1, int paramInt2)
    {
      this.path = paramString;
      this.x = paramInt1;
      this.y = paramInt2;
    }
  }
  
  private static abstract interface OnLoadElementListener
  {
    public abstract void OnLoadElement(Element paramElement);
  }
  
  private class SaveAsyncTask
    extends AsyncTask<Void, Void, Void>
  {
    private Context mContext;
    private String mData;
    private String mPath;
    
    public SaveAsyncTask(Context paramContext, String paramString1, String paramString2)
    {
      this.mContext = paramContext;
      this.mData = paramString1;
      this.mPath = paramString2;
    }
    
    protected Void doInBackground(Void... paramVarArgs)
    {
      try
      {
        paramVarArgs = Uri.parse("content://com.miui.maml.provider");
        Bundle localBundle = new android/os/Bundle;
        localBundle.<init>();
        localBundle.putString("data", this.mData);
        localBundle.putString("path", this.mPath);
        this.mContext.getContentResolver().call(paramVarArgs, "saveConfigFile", null, localBundle);
      }
      catch (Exception paramVarArgs)
      {
        paramVarArgs.printStackTrace();
      }
      return null;
    }
  }
  
  public static class Variable
  {
    public String name;
    public String type;
    public String value;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.ConfigFile
 * JD-Core Version:    0.7.0.1
 */