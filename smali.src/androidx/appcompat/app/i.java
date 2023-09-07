package androidx.appcompat.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.view.InflateException;
import android.view.View;
import android.view.View.OnClickListener;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.c;
import androidx.appcompat.widget.h;
import androidx.appcompat.widget.l;
import androidx.appcompat.widget.n;
import androidx.appcompat.widget.q;
import androidx.appcompat.widget.s;
import androidx.appcompat.widget.w0;
import d.j;
import h.d;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import n.g;

public class i
{
  private static final String LOG_TAG = "AppCompatViewInflater";
  private static final int[] sAccessibilityHeading;
  private static final int[] sAccessibilityPaneTitle;
  private static final String[] sClassPrefixList = { "android.widget.", "android.view.", "android.webkit." };
  private static final g<String, Constructor<? extends View>> sConstructorMap = new g();
  private static final Class<?>[] sConstructorSignature = { Context.class, AttributeSet.class };
  private static final int[] sOnClickAttrs = { 16843375 };
  private static final int[] sScreenReaderFocusable;
  private final Object[] mConstructorArgs = new Object[2];
  
  static
  {
    sAccessibilityHeading = new int[] { 16844160 };
    sAccessibilityPaneTitle = new int[] { 16844156 };
    sScreenReaderFocusable = new int[] { 16844148 };
  }
  
  private void backportAccessibilityAttributes(Context paramContext, View paramView, AttributeSet paramAttributeSet)
  {
    if (Build.VERSION.SDK_INT > 28) {
      return;
    }
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, sAccessibilityHeading);
    if (localTypedArray.hasValue(0)) {
      androidx.core.view.a0.m0(paramView, localTypedArray.getBoolean(0, false));
    }
    localTypedArray.recycle();
    localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, sAccessibilityPaneTitle);
    if (localTypedArray.hasValue(0)) {
      androidx.core.view.a0.o0(paramView, localTypedArray.getString(0));
    }
    localTypedArray.recycle();
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, sScreenReaderFocusable);
    if (paramContext.hasValue(0)) {
      androidx.core.view.a0.C0(paramView, paramContext.getBoolean(0, false));
    }
    paramContext.recycle();
  }
  
  private void checkOnClickListener(View paramView, AttributeSet paramAttributeSet)
  {
    Object localObject = paramView.getContext();
    if (((localObject instanceof ContextWrapper)) && (androidx.core.view.a0.K(paramView)))
    {
      paramAttributeSet = ((Context)localObject).obtainStyledAttributes(paramAttributeSet, sOnClickAttrs);
      localObject = paramAttributeSet.getString(0);
      if (localObject != null) {
        paramView.setOnClickListener(new a(paramView, (String)localObject));
      }
      paramAttributeSet.recycle();
    }
  }
  
  private View createViewByPrefix(Context paramContext, String paramString1, String paramString2)
    throws ClassNotFoundException, InflateException
  {
    g localg = sConstructorMap;
    Constructor localConstructor = (Constructor)localg.get(paramString1);
    Object localObject = localConstructor;
    if ((localConstructor != null) || (paramString2 != null)) {}
    try
    {
      localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      ((StringBuilder)localObject).append(paramString2);
      ((StringBuilder)localObject).append(paramString1);
      paramString2 = ((StringBuilder)localObject).toString();
      break label64;
      paramString2 = paramString1;
      label64:
      localObject = Class.forName(paramString2, false, paramContext.getClassLoader()).asSubclass(View.class).getConstructor(sConstructorSignature);
      localg.put(paramString1, localObject);
      ((AccessibleObject)localObject).setAccessible(true);
      paramContext = (View)((Constructor)localObject).newInstance(this.mConstructorArgs);
      return paramContext;
    }
    catch (Exception paramContext) {}
    return null;
  }
  
  /* Error */
  private View createViewFromTag(Context paramContext, String paramString, AttributeSet paramAttributeSet)
  {
    // Byte code:
    //   0: aload_2
    //   1: astore 4
    //   3: aload_2
    //   4: ldc 192
    //   6: invokevirtual 196	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   9: ifeq +14 -> 23
    //   12: aload_3
    //   13: aconst_null
    //   14: ldc 198
    //   16: invokeinterface 202 3 0
    //   21: astore 4
    //   23: aload_0
    //   24: getfield 69	androidx/appcompat/app/i:mConstructorArgs	[Ljava/lang/Object;
    //   27: astore_2
    //   28: aload_2
    //   29: iconst_0
    //   30: aload_1
    //   31: aastore
    //   32: aload_2
    //   33: iconst_1
    //   34: aload_3
    //   35: aastore
    //   36: iconst_m1
    //   37: aload 4
    //   39: bipush 46
    //   41: invokevirtual 206	java/lang/String:indexOf	(I)I
    //   44: if_icmpne +69 -> 113
    //   47: iconst_0
    //   48: istore 5
    //   50: getstatic 58	androidx/appcompat/app/i:sClassPrefixList	[Ljava/lang/String;
    //   53: astore_2
    //   54: iload 5
    //   56: aload_2
    //   57: arraylength
    //   58: if_icmpge +40 -> 98
    //   61: aload_0
    //   62: aload_1
    //   63: aload 4
    //   65: aload_2
    //   66: iload 5
    //   68: aaload
    //   69: invokespecial 208	androidx/appcompat/app/i:createViewByPrefix	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    //   72: astore_2
    //   73: aload_2
    //   74: ifnull +18 -> 92
    //   77: aload_0
    //   78: getfield 69	androidx/appcompat/app/i:mConstructorArgs	[Ljava/lang/Object;
    //   81: astore_1
    //   82: aload_1
    //   83: iconst_0
    //   84: aconst_null
    //   85: aastore
    //   86: aload_1
    //   87: iconst_1
    //   88: aconst_null
    //   89: aastore
    //   90: aload_2
    //   91: areturn
    //   92: iinc 5 1
    //   95: goto -45 -> 50
    //   98: aload_0
    //   99: getfield 69	androidx/appcompat/app/i:mConstructorArgs	[Ljava/lang/Object;
    //   102: astore_1
    //   103: aload_1
    //   104: iconst_0
    //   105: aconst_null
    //   106: aastore
    //   107: aload_1
    //   108: iconst_1
    //   109: aconst_null
    //   110: aastore
    //   111: aconst_null
    //   112: areturn
    //   113: aload_0
    //   114: aload_1
    //   115: aload 4
    //   117: aconst_null
    //   118: invokespecial 208	androidx/appcompat/app/i:createViewByPrefix	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    //   121: astore_1
    //   122: aload_0
    //   123: getfield 69	androidx/appcompat/app/i:mConstructorArgs	[Ljava/lang/Object;
    //   126: astore_2
    //   127: aload_2
    //   128: iconst_0
    //   129: aconst_null
    //   130: aastore
    //   131: aload_2
    //   132: iconst_1
    //   133: aconst_null
    //   134: aastore
    //   135: aload_1
    //   136: areturn
    //   137: astore_2
    //   138: aload_0
    //   139: getfield 69	androidx/appcompat/app/i:mConstructorArgs	[Ljava/lang/Object;
    //   142: astore_1
    //   143: aload_1
    //   144: iconst_0
    //   145: aconst_null
    //   146: aastore
    //   147: aload_1
    //   148: iconst_1
    //   149: aconst_null
    //   150: aastore
    //   151: aload_2
    //   152: athrow
    //   153: astore_1
    //   154: aload_0
    //   155: getfield 69	androidx/appcompat/app/i:mConstructorArgs	[Ljava/lang/Object;
    //   158: astore_1
    //   159: aload_1
    //   160: iconst_0
    //   161: aconst_null
    //   162: aastore
    //   163: aload_1
    //   164: iconst_1
    //   165: aconst_null
    //   166: aastore
    //   167: aconst_null
    //   168: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	169	0	this	i
    //   0	169	1	paramContext	Context
    //   0	169	2	paramString	String
    //   0	169	3	paramAttributeSet	AttributeSet
    //   1	115	4	str	String
    //   48	45	5	i	int
    // Exception table:
    //   from	to	target	type
    //   23	28	137	finally
    //   36	47	137	finally
    //   50	73	137	finally
    //   113	122	137	finally
    //   23	28	153	java/lang/Exception
    //   36	47	153	java/lang/Exception
    //   50	73	153	java/lang/Exception
    //   113	122	153	java/lang/Exception
  }
  
  private static Context themifyContext(Context paramContext, AttributeSet paramAttributeSet, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, j.H3, 0, 0);
    int i;
    if (paramBoolean1) {
      i = paramAttributeSet.getResourceId(j.I3, 0);
    } else {
      i = 0;
    }
    int j = i;
    if (paramBoolean2)
    {
      j = i;
      if (i == 0)
      {
        i = paramAttributeSet.getResourceId(j.J3, 0);
        j = i;
        if (i != 0)
        {
          Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
          j = i;
        }
      }
    }
    paramAttributeSet.recycle();
    paramAttributeSet = paramContext;
    if (j != 0) {
      if ((paramContext instanceof d))
      {
        paramAttributeSet = paramContext;
        if (((d)paramContext).c() == j) {}
      }
      else
      {
        paramAttributeSet = new d(paramContext, j);
      }
    }
    return paramAttributeSet;
  }
  
  private void verifyNotNull(View paramView, String paramString)
  {
    if (paramView != null) {
      return;
    }
    paramView = new StringBuilder();
    paramView.append(getClass().getName());
    paramView.append(" asked to inflate view for <");
    paramView.append(paramString);
    paramView.append(">, but returned null");
    throw new IllegalStateException(paramView.toString());
  }
  
  protected c createAutoCompleteTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new c(paramContext, paramAttributeSet);
  }
  
  protected AppCompatButton createButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new AppCompatButton(paramContext, paramAttributeSet);
  }
  
  protected AppCompatCheckBox createCheckBox(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new AppCompatCheckBox(paramContext, paramAttributeSet);
  }
  
  protected AppCompatCheckedTextView createCheckedTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new AppCompatCheckedTextView(paramContext, paramAttributeSet);
  }
  
  protected h createEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new h(paramContext, paramAttributeSet);
  }
  
  protected l createImageButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new l(paramContext, paramAttributeSet);
  }
  
  protected AppCompatImageView createImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new AppCompatImageView(paramContext, paramAttributeSet);
  }
  
  protected n createMultiAutoCompleteTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new n(paramContext, paramAttributeSet);
  }
  
  protected AppCompatRadioButton createRadioButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new AppCompatRadioButton(paramContext, paramAttributeSet);
  }
  
  protected q createRatingBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new q(paramContext, paramAttributeSet);
  }
  
  protected s createSeekBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new s(paramContext, paramAttributeSet);
  }
  
  protected AppCompatSpinner createSpinner(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new AppCompatSpinner(paramContext, paramAttributeSet);
  }
  
  protected AppCompatTextView createTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new AppCompatTextView(paramContext, paramAttributeSet);
  }
  
  protected androidx.appcompat.widget.a0 createToggleButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new androidx.appcompat.widget.a0(paramContext, paramAttributeSet);
  }
  
  protected View createView(Context paramContext, String paramString, AttributeSet paramAttributeSet)
  {
    return null;
  }
  
  final View createView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    if ((paramBoolean1) && (paramView != null)) {
      localObject = paramView.getContext();
    } else {
      localObject = paramContext;
    }
    if (!paramBoolean2)
    {
      paramView = (View)localObject;
      if (!paramBoolean3) {}
    }
    else
    {
      paramView = themifyContext((Context)localObject, paramAttributeSet, paramBoolean2, paramBoolean3);
    }
    Object localObject = paramView;
    if (paramBoolean4) {
      localObject = w0.b(paramView);
    }
    paramString.hashCode();
    int i = -1;
    switch (paramString.hashCode())
    {
    default: 
      break;
    case 2001146706: 
      if (paramString.equals("Button")) {
        i = 13;
      }
      break;
    case 1666676343: 
      if (paramString.equals("EditText")) {
        i = 12;
      }
      break;
    case 1601505219: 
      if (paramString.equals("CheckBox")) {
        i = 11;
      }
      break;
    case 1413872058: 
      if (paramString.equals("AutoCompleteTextView")) {
        i = 10;
      }
      break;
    case 1125864064: 
      if (paramString.equals("ImageView")) {
        i = 9;
      }
      break;
    case 799298502: 
      if (paramString.equals("ToggleButton")) {
        i = 8;
      }
      break;
    case 776382189: 
      if (paramString.equals("RadioButton")) {
        i = 7;
      }
      break;
    case -339785223: 
      if (paramString.equals("Spinner")) {
        i = 6;
      }
      break;
    case -658531749: 
      if (paramString.equals("SeekBar")) {
        i = 5;
      }
      break;
    case -937446323: 
      if (paramString.equals("ImageButton")) {
        i = 4;
      }
      break;
    case -938935918: 
      if (paramString.equals("TextView")) {
        i = 3;
      }
      break;
    case -1346021293: 
      if (paramString.equals("MultiAutoCompleteTextView")) {
        i = 2;
      }
      break;
    case -1455429095: 
      if (paramString.equals("CheckedTextView")) {
        i = 1;
      }
      break;
    case -1946472170: 
      if (paramString.equals("RatingBar")) {
        i = 0;
      }
      break;
    }
    switch (i)
    {
    default: 
      paramView = createView((Context)localObject, paramString, paramAttributeSet);
      break;
    case 13: 
      paramView = createButton((Context)localObject, paramAttributeSet);
      verifyNotNull(paramView, paramString);
      break;
    case 12: 
      paramView = createEditText((Context)localObject, paramAttributeSet);
      verifyNotNull(paramView, paramString);
      break;
    case 11: 
      paramView = createCheckBox((Context)localObject, paramAttributeSet);
      verifyNotNull(paramView, paramString);
      break;
    case 10: 
      paramView = createAutoCompleteTextView((Context)localObject, paramAttributeSet);
      verifyNotNull(paramView, paramString);
      break;
    case 9: 
      paramView = createImageView((Context)localObject, paramAttributeSet);
      verifyNotNull(paramView, paramString);
      break;
    case 8: 
      paramView = createToggleButton((Context)localObject, paramAttributeSet);
      verifyNotNull(paramView, paramString);
      break;
    case 7: 
      paramView = createRadioButton((Context)localObject, paramAttributeSet);
      verifyNotNull(paramView, paramString);
      break;
    case 6: 
      paramView = createSpinner((Context)localObject, paramAttributeSet);
      verifyNotNull(paramView, paramString);
      break;
    case 5: 
      paramView = createSeekBar((Context)localObject, paramAttributeSet);
      verifyNotNull(paramView, paramString);
      break;
    case 4: 
      paramView = createImageButton((Context)localObject, paramAttributeSet);
      verifyNotNull(paramView, paramString);
      break;
    case 3: 
      paramView = createTextView((Context)localObject, paramAttributeSet);
      verifyNotNull(paramView, paramString);
      break;
    case 2: 
      paramView = createMultiAutoCompleteTextView((Context)localObject, paramAttributeSet);
      verifyNotNull(paramView, paramString);
      break;
    case 1: 
      paramView = createCheckedTextView((Context)localObject, paramAttributeSet);
      verifyNotNull(paramView, paramString);
      break;
    case 0: 
      paramView = createRatingBar((Context)localObject, paramAttributeSet);
      verifyNotNull(paramView, paramString);
    }
    View localView = paramView;
    if (paramView == null)
    {
      localView = paramView;
      if (paramContext != localObject) {
        localView = createViewFromTag((Context)localObject, paramString, paramAttributeSet);
      }
    }
    if (localView != null)
    {
      checkOnClickListener(localView, paramAttributeSet);
      backportAccessibilityAttributes((Context)localObject, localView, paramAttributeSet);
    }
    return localView;
  }
  
  private static class a
    implements View.OnClickListener
  {
    private final View a;
    private final String b;
    private Method c;
    private Context d;
    
    public a(View paramView, String paramString)
    {
      this.a = paramView;
      this.b = paramString;
    }
    
    private void a(Context paramContext)
    {
      while (paramContext != null)
      {
        try
        {
          if (!paramContext.isRestricted())
          {
            localObject = paramContext.getClass().getMethod(this.b, new Class[] { View.class });
            if (localObject != null)
            {
              this.c = ((Method)localObject);
              this.d = paramContext;
              return;
            }
          }
        }
        catch (NoSuchMethodException localNoSuchMethodException)
        {
          Object localObject;
          label47:
          int i;
          break label47;
        }
        if ((paramContext instanceof ContextWrapper)) {
          paramContext = ((ContextWrapper)paramContext).getBaseContext();
        } else {
          paramContext = null;
        }
      }
      i = this.a.getId();
      if (i == -1)
      {
        paramContext = "";
      }
      else
      {
        paramContext = new StringBuilder();
        paramContext.append(" with id '");
        paramContext.append(this.a.getContext().getResources().getResourceEntryName(i));
        paramContext.append("'");
        paramContext = paramContext.toString();
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Could not find method ");
      ((StringBuilder)localObject).append(this.b);
      ((StringBuilder)localObject).append("(View) in a parent or ancestor Context for android:onClick attribute defined on view ");
      ((StringBuilder)localObject).append(this.a.getClass());
      ((StringBuilder)localObject).append(paramContext);
      throw new IllegalStateException(((StringBuilder)localObject).toString());
    }
    
    public void onClick(View paramView)
    {
      if (this.c == null) {
        a(this.a.getContext());
      }
      try
      {
        this.c.invoke(this.d, new Object[] { paramView });
        return;
      }
      catch (InvocationTargetException paramView)
      {
        throw new IllegalStateException("Could not execute method for android:onClick", paramView);
      }
      catch (IllegalAccessException paramView)
      {
        throw new IllegalStateException("Could not execute non-public method for android:onClick", paramView);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.app.i
 * JD-Core Version:    0.7.0.1
 */