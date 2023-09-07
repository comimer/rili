package com.android.dingtalk.openauth.web;

import android.app.Activity;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class a
{
  private static Method a;
  private static Method b;
  private static Field c;
  private static int d = View.class.getField("SYSTEM_UI_FLAG_LIGHT_STATUS_BAR").getInt(null);
  
  /* Error */
  static
  {
    // Byte code:
    //   0: ldc 21
    //   2: ldc 23
    //   4: iconst_1
    //   5: anewarray 25	java/lang/Class
    //   8: dup
    //   9: iconst_0
    //   10: getstatic 31	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   13: aastore
    //   14: invokevirtual 35	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   17: putstatic 37	com/android/dingtalk/openauth/web/a:a	Ljava/lang/reflect/Method;
    //   20: goto +8 -> 28
    //   23: astore_0
    //   24: aload_0
    //   25: invokevirtual 42	java/lang/Throwable:printStackTrace	()V
    //   28: ldc 21
    //   30: ldc 23
    //   32: iconst_1
    //   33: anewarray 25	java/lang/Class
    //   36: dup
    //   37: iconst_0
    //   38: getstatic 45	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   41: aastore
    //   42: invokevirtual 35	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   45: putstatic 47	com/android/dingtalk/openauth/web/a:b	Ljava/lang/reflect/Method;
    //   48: goto +8 -> 56
    //   51: astore_0
    //   52: aload_0
    //   53: invokevirtual 42	java/lang/Throwable:printStackTrace	()V
    //   56: ldc 49
    //   58: ldc 51
    //   60: invokevirtual 55	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   63: putstatic 57	com/android/dingtalk/openauth/web/a:c	Ljava/lang/reflect/Field;
    //   66: goto +8 -> 74
    //   69: astore_0
    //   70: aload_0
    //   71: invokevirtual 42	java/lang/Throwable:printStackTrace	()V
    //   74: ldc 59
    //   76: ldc 61
    //   78: invokevirtual 55	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   81: aconst_null
    //   82: invokevirtual 67	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   85: putstatic 69	com/android/dingtalk/openauth/web/a:d	I
    //   88: goto +24 -> 112
    //   91: astore_0
    //   92: aload_0
    //   93: invokevirtual 42	java/lang/Throwable:printStackTrace	()V
    //   96: goto +16 -> 112
    //   99: astore_0
    //   100: aload_0
    //   101: invokevirtual 42	java/lang/Throwable:printStackTrace	()V
    //   104: goto +8 -> 112
    //   107: astore_0
    //   108: aload_0
    //   109: invokevirtual 42	java/lang/Throwable:printStackTrace	()V
    //   112: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   23	2	0	localNoSuchMethodException1	java.lang.NoSuchMethodException
    //   51	2	0	localNoSuchMethodException2	java.lang.NoSuchMethodException
    //   69	2	0	localNoSuchFieldException1	java.lang.NoSuchFieldException
    //   91	2	0	localObject	Object
    //   99	2	0	localIllegalAccessException	IllegalAccessException
    //   107	2	0	localNoSuchFieldException2	java.lang.NoSuchFieldException
    // Exception table:
    //   from	to	target	type
    //   0	20	23	java/lang/NoSuchMethodException
    //   28	48	51	java/lang/NoSuchMethodException
    //   56	66	69	java/lang/NoSuchFieldException
    //   74	88	91	finally
    //   74	88	99	java/lang/IllegalAccessException
    //   74	88	107	java/lang/NoSuchFieldException
  }
  
  public static int a(int paramInt)
  {
    return ((paramInt & 0xFF0000) >> 16) * 38 + ((0xFF00 & paramInt) >> 8) * 75 + (paramInt & 0xFF) * 15 >> 7;
  }
  
  public static void a(Activity paramActivity, int paramInt)
  {
    Method localMethod = a;
    if (localMethod != null)
    {
      try
      {
        localMethod.invoke(paramActivity, new Object[] { Integer.valueOf(paramInt) });
      }
      catch (InvocationTargetException paramActivity)
      {
        paramActivity.printStackTrace();
      }
      catch (IllegalAccessException paramActivity)
      {
        paramActivity.printStackTrace();
      }
    }
    else
    {
      boolean bool = a(paramInt, 50);
      if (c != null)
      {
        a(paramActivity, bool, bool);
        a(paramActivity.getWindow(), paramInt);
      }
      else
      {
        a(paramActivity, bool);
      }
    }
  }
  
  public static void a(Activity paramActivity, boolean paramBoolean)
  {
    a(paramActivity, paramBoolean, true);
  }
  
  private static void a(Activity paramActivity, boolean paramBoolean1, boolean paramBoolean2)
  {
    Method localMethod = b;
    if (localMethod != null) {
      try
      {
        localMethod.invoke(paramActivity, new Object[] { Boolean.valueOf(paramBoolean1) });
      }
      catch (InvocationTargetException paramActivity)
      {
        paramActivity.printStackTrace();
      }
      catch (IllegalAccessException paramActivity)
      {
        paramActivity.printStackTrace();
      }
    } else if (paramBoolean2) {
      a(paramActivity.getWindow(), paramBoolean1);
    }
  }
  
  private static void a(View paramView, boolean paramBoolean)
  {
    int i = paramView.getSystemUiVisibility();
    int j;
    if (paramBoolean) {
      j = d | i;
    } else {
      j = d & i;
    }
    if (j != i) {
      paramView.setSystemUiVisibility(j);
    }
  }
  
  public static void a(Window paramWindow, int paramInt)
  {
    try
    {
      b(paramWindow, paramInt);
      a(paramWindow.getDecorView(), true);
    }
    catch (Exception paramWindow)
    {
      paramWindow.printStackTrace();
    }
  }
  
  public static void a(Window paramWindow, boolean paramBoolean)
  {
    View localView = paramWindow.getDecorView();
    if (localView != null)
    {
      a(localView, paramBoolean);
      b(paramWindow, 0);
    }
  }
  
  public static boolean a(int paramInt1, int paramInt2)
  {
    boolean bool;
    if (a(paramInt1) < paramInt2) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  /* Error */
  private static boolean a(WindowManager.LayoutParams paramLayoutParams, java.lang.String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 141	java/lang/Object:getClass	()Ljava/lang/Class;
    //   4: aload_1
    //   5: invokevirtual 144	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   8: astore_1
    //   9: aload_1
    //   10: iconst_1
    //   11: invokevirtual 150	java/lang/reflect/AccessibleObject:setAccessible	(Z)V
    //   14: aload_1
    //   15: aload_0
    //   16: invokevirtual 67	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   19: istore_3
    //   20: aload_0
    //   21: invokevirtual 141	java/lang/Object:getClass	()Ljava/lang/Class;
    //   24: ldc 152
    //   26: invokevirtual 144	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   29: astore_1
    //   30: aload_1
    //   31: iconst_1
    //   32: invokevirtual 150	java/lang/reflect/AccessibleObject:setAccessible	(Z)V
    //   35: aload_1
    //   36: aload_0
    //   37: invokevirtual 67	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   40: istore 4
    //   42: iload_2
    //   43: ifeq +11 -> 54
    //   46: iload_3
    //   47: iload 4
    //   49: ior
    //   50: istore_3
    //   51: goto +8 -> 59
    //   54: iload_3
    //   55: iload 4
    //   57: iand
    //   58: istore_3
    //   59: iload 4
    //   61: iload_3
    //   62: if_icmpeq +40 -> 102
    //   65: aload_1
    //   66: aload_0
    //   67: iload_3
    //   68: invokevirtual 156	java/lang/reflect/Field:setInt	(Ljava/lang/Object;I)V
    //   71: iconst_1
    //   72: ireturn
    //   73: astore_0
    //   74: aload_0
    //   75: invokevirtual 42	java/lang/Throwable:printStackTrace	()V
    //   78: goto +24 -> 102
    //   81: astore_0
    //   82: aload_0
    //   83: invokevirtual 42	java/lang/Throwable:printStackTrace	()V
    //   86: goto +16 -> 102
    //   89: astore_0
    //   90: aload_0
    //   91: invokevirtual 42	java/lang/Throwable:printStackTrace	()V
    //   94: goto +8 -> 102
    //   97: astore_0
    //   98: aload_0
    //   99: invokevirtual 42	java/lang/Throwable:printStackTrace	()V
    //   102: iconst_0
    //   103: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	104	0	paramLayoutParams	WindowManager.LayoutParams
    //   0	104	1	paramString	java.lang.String
    //   0	104	2	paramBoolean	boolean
    //   19	49	3	i	int
    //   40	23	4	j	int
    // Exception table:
    //   from	to	target	type
    //   0	42	73	finally
    //   65	71	73	finally
    //   0	42	81	java/lang/IllegalArgumentException
    //   65	71	81	java/lang/IllegalArgumentException
    //   0	42	89	java/lang/IllegalAccessException
    //   65	71	89	java/lang/IllegalAccessException
    //   0	42	97	java/lang/NoSuchFieldException
    //   65	71	97	java/lang/NoSuchFieldException
  }
  
  private static void b(Window paramWindow, int paramInt)
  {
    WindowManager.LayoutParams localLayoutParams = paramWindow.getAttributes();
    Field localField = c;
    if (localField != null) {
      try
      {
        if (localField.getInt(localLayoutParams) != paramInt)
        {
          c.set(localLayoutParams, Integer.valueOf(paramInt));
          paramWindow.setAttributes(localLayoutParams);
        }
      }
      catch (IllegalAccessException paramWindow)
      {
        paramWindow.printStackTrace();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.dingtalk.openauth.web.a
 * JD-Core Version:    0.7.0.1
 */