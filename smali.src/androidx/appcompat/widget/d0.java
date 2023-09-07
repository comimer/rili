package androidx.appcompat.widget;

import android.graphics.Insets;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.DrawableContainer.DrawableContainerState;
import android.graphics.drawable.DrawableWrapper;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build.VERSION;
import androidx.core.graphics.drawable.g;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class d0
{
  private static final int[] a = { 16842912 };
  private static final int[] b = new int[0];
  public static final Rect c = new Rect();
  
  public static boolean a(Drawable paramDrawable)
  {
    if ((paramDrawable instanceof DrawableContainer))
    {
      paramDrawable = paramDrawable.getConstantState();
      if ((paramDrawable instanceof DrawableContainer.DrawableContainerState))
      {
        paramDrawable = ((DrawableContainer.DrawableContainerState)paramDrawable).getChildren();
        int i = paramDrawable.length;
        for (int j = 0; j < i; j++) {
          if (!a(paramDrawable[j])) {
            return false;
          }
        }
      }
    }
    else
    {
      if ((paramDrawable instanceof g)) {
        return a(((g)paramDrawable).b());
      }
      if ((paramDrawable instanceof androidx.appcompat.graphics.drawable.a)) {
        return a(((androidx.appcompat.graphics.drawable.a)paramDrawable).getWrappedDrawable());
      }
      if ((paramDrawable instanceof ScaleDrawable)) {
        return a(((ScaleDrawable)paramDrawable).getDrawable());
      }
    }
    return true;
  }
  
  static void b(Drawable paramDrawable)
  {
    String str = paramDrawable.getClass().getName();
    int i = Build.VERSION.SDK_INT;
    if ((i >= 29) && (i < 31) && ("android.graphics.drawable.ColorStateListDrawable".equals(str))) {
      c(paramDrawable);
    }
  }
  
  private static void c(Drawable paramDrawable)
  {
    int[] arrayOfInt = paramDrawable.getState();
    if ((arrayOfInt != null) && (arrayOfInt.length != 0)) {
      paramDrawable.setState(b);
    } else {
      paramDrawable.setState(a);
    }
    paramDrawable.setState(arrayOfInt);
  }
  
  public static Rect d(Drawable paramDrawable)
  {
    if (Build.VERSION.SDK_INT >= 29)
    {
      paramDrawable = b.a(paramDrawable);
      return new Rect(paramDrawable.left, paramDrawable.top, paramDrawable.right, paramDrawable.bottom);
    }
    return a.a(androidx.core.graphics.drawable.a.q(paramDrawable));
  }
  
  public static PorterDuff.Mode e(int paramInt, PorterDuff.Mode paramMode)
  {
    if (paramInt != 3)
    {
      if (paramInt != 5)
      {
        if (paramInt != 9)
        {
          switch (paramInt)
          {
          default: 
            return paramMode;
          case 16: 
            return PorterDuff.Mode.ADD;
          case 15: 
            return PorterDuff.Mode.SCREEN;
          }
          return PorterDuff.Mode.MULTIPLY;
        }
        return PorterDuff.Mode.SRC_ATOP;
      }
      return PorterDuff.Mode.SRC_IN;
    }
    return PorterDuff.Mode.SRC_OVER;
  }
  
  static class a
  {
    private static final boolean a = false;
    private static final Method b;
    private static final Field c;
    private static final Field d;
    private static final Field e;
    private static final Field f;
    
    /* Error */
    static
    {
      // Byte code:
      //   0: ldc 25
      //   2: invokestatic 31	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
      //   5: astore_0
      //   6: ldc 33
      //   8: ldc 35
      //   10: iconst_0
      //   11: anewarray 27	java/lang/Class
      //   14: invokevirtual 39	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
      //   17: astore_1
      //   18: aload_0
      //   19: ldc 41
      //   21: invokevirtual 45	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
      //   24: astore_2
      //   25: aload_0
      //   26: ldc 47
      //   28: invokevirtual 45	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
      //   31: astore_3
      //   32: aload_0
      //   33: ldc 49
      //   35: invokevirtual 45	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
      //   38: astore 4
      //   40: aload_0
      //   41: ldc 51
      //   43: invokevirtual 45	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
      //   46: astore_0
      //   47: iconst_1
      //   48: istore 5
      //   50: goto +111 -> 161
      //   53: astore_0
      //   54: aconst_null
      //   55: astore 4
      //   57: goto +99 -> 156
      //   60: astore_0
      //   61: aconst_null
      //   62: astore 4
      //   64: aload_1
      //   65: astore_0
      //   66: aload 4
      //   68: astore_1
      //   69: goto +80 -> 149
      //   72: astore_0
      //   73: aconst_null
      //   74: astore 4
      //   76: aload_1
      //   77: astore_0
      //   78: aload 4
      //   80: astore_1
      //   81: goto +68 -> 149
      //   84: astore_0
      //   85: aconst_null
      //   86: astore 4
      //   88: aload_1
      //   89: astore_0
      //   90: aload 4
      //   92: astore_1
      //   93: goto +56 -> 149
      //   96: astore_0
      //   97: goto +16 -> 113
      //   100: astore_0
      //   101: goto +28 -> 129
      //   104: astore_0
      //   105: aload_1
      //   106: astore_0
      //   107: goto +38 -> 145
      //   110: astore_1
      //   111: aconst_null
      //   112: astore_1
      //   113: aconst_null
      //   114: astore_2
      //   115: aconst_null
      //   116: astore 4
      //   118: aload_1
      //   119: astore_0
      //   120: aload 4
      //   122: astore_1
      //   123: goto +26 -> 149
      //   126: astore_1
      //   127: aconst_null
      //   128: astore_1
      //   129: aconst_null
      //   130: astore_2
      //   131: aconst_null
      //   132: astore 4
      //   134: aload_1
      //   135: astore_0
      //   136: aload 4
      //   138: astore_1
      //   139: goto +10 -> 149
      //   142: astore_1
      //   143: aconst_null
      //   144: astore_0
      //   145: aconst_null
      //   146: astore_2
      //   147: aconst_null
      //   148: astore_1
      //   149: aload_1
      //   150: astore 4
      //   152: aload_1
      //   153: astore_3
      //   154: aload_0
      //   155: astore_1
      //   156: iconst_0
      //   157: istore 5
      //   159: aconst_null
      //   160: astore_0
      //   161: iload 5
      //   163: ifeq +31 -> 194
      //   166: aload_1
      //   167: putstatic 53	androidx/appcompat/widget/d0$a:b	Ljava/lang/reflect/Method;
      //   170: aload_2
      //   171: putstatic 55	androidx/appcompat/widget/d0$a:c	Ljava/lang/reflect/Field;
      //   174: aload_3
      //   175: putstatic 57	androidx/appcompat/widget/d0$a:d	Ljava/lang/reflect/Field;
      //   178: aload 4
      //   180: putstatic 59	androidx/appcompat/widget/d0$a:e	Ljava/lang/reflect/Field;
      //   183: aload_0
      //   184: putstatic 61	androidx/appcompat/widget/d0$a:f	Ljava/lang/reflect/Field;
      //   187: iconst_1
      //   188: putstatic 63	androidx/appcompat/widget/d0$a:a	Z
      //   191: goto +27 -> 218
      //   194: aconst_null
      //   195: putstatic 53	androidx/appcompat/widget/d0$a:b	Ljava/lang/reflect/Method;
      //   198: aconst_null
      //   199: putstatic 55	androidx/appcompat/widget/d0$a:c	Ljava/lang/reflect/Field;
      //   202: aconst_null
      //   203: putstatic 57	androidx/appcompat/widget/d0$a:d	Ljava/lang/reflect/Field;
      //   206: aconst_null
      //   207: putstatic 59	androidx/appcompat/widget/d0$a:e	Ljava/lang/reflect/Field;
      //   210: aconst_null
      //   211: putstatic 61	androidx/appcompat/widget/d0$a:f	Ljava/lang/reflect/Field;
      //   214: iconst_0
      //   215: putstatic 63	androidx/appcompat/widget/d0$a:a	Z
      //   218: return
      //   219: astore_0
      //   220: goto -64 -> 156
      // Local variable table:
      //   start	length	slot	name	signature
      //   5	42	0	localObject1	Object
      //   53	1	0	localNoSuchMethodException1	java.lang.NoSuchMethodException
      //   60	1	0	localNoSuchFieldException1	java.lang.NoSuchFieldException
      //   65	1	0	localObject2	Object
      //   72	1	0	localClassNotFoundException1	java.lang.ClassNotFoundException
      //   77	1	0	localObject3	Object
      //   84	1	0	localNoSuchMethodException2	java.lang.NoSuchMethodException
      //   89	1	0	localObject4	Object
      //   96	1	0	localNoSuchFieldException2	java.lang.NoSuchFieldException
      //   100	1	0	localClassNotFoundException2	java.lang.ClassNotFoundException
      //   104	1	0	localNoSuchMethodException3	java.lang.NoSuchMethodException
      //   106	78	0	localObject5	Object
      //   219	1	0	localNoSuchMethodException4	java.lang.NoSuchMethodException
      //   17	89	1	localObject6	Object
      //   110	1	1	localNoSuchFieldException3	java.lang.NoSuchFieldException
      //   112	11	1	localObject7	Object
      //   126	1	1	localClassNotFoundException3	java.lang.ClassNotFoundException
      //   128	11	1	localObject8	Object
      //   142	1	1	localNoSuchMethodException5	java.lang.NoSuchMethodException
      //   148	19	1	localObject9	Object
      //   24	147	2	localField	Field
      //   31	144	3	localObject10	Object
      //   38	141	4	localObject11	Object
      //   48	114	5	i	int
      // Exception table:
      //   from	to	target	type
      //   32	40	53	java/lang/NoSuchMethodException
      //   32	40	53	java/lang/ClassNotFoundException
      //   32	40	53	java/lang/NoSuchFieldException
      //   25	32	60	java/lang/NoSuchFieldException
      //   25	32	72	java/lang/ClassNotFoundException
      //   25	32	84	java/lang/NoSuchMethodException
      //   18	25	96	java/lang/NoSuchFieldException
      //   18	25	100	java/lang/ClassNotFoundException
      //   18	25	104	java/lang/NoSuchMethodException
      //   0	18	110	java/lang/NoSuchFieldException
      //   0	18	126	java/lang/ClassNotFoundException
      //   0	18	142	java/lang/NoSuchMethodException
      //   40	47	219	java/lang/NoSuchMethodException
      //   40	47	219	java/lang/ClassNotFoundException
      //   40	47	219	java/lang/NoSuchFieldException
    }
    
    static Rect a(Drawable paramDrawable)
    {
      if ((Build.VERSION.SDK_INT < 29) && (a)) {}
      try
      {
        paramDrawable = b.invoke(paramDrawable, new Object[0]);
        if (paramDrawable != null)
        {
          paramDrawable = new Rect(c.getInt(paramDrawable), d.getInt(paramDrawable), e.getInt(paramDrawable), f.getInt(paramDrawable));
          return paramDrawable;
        }
      }
      catch (IllegalAccessException|InvocationTargetException paramDrawable)
      {
        label68:
        break label68;
      }
      return d0.c;
    }
  }
  
  static class b
  {
    static Insets a(Drawable paramDrawable)
    {
      return e0.a(paramDrawable);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.d0
 * JD-Core Version:    0.7.0.1
 */