package androidx.activity;

import android.app.Activity;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.l;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;

final class ImmLeaksCleaner
  implements l
{
  private static int b;
  private static Field c;
  private static Field d;
  private static Field e;
  private Activity a;
  
  private static void h()
  {
    try
    {
      b = 2;
      Field localField = InputMethodManager.class.getDeclaredField("mServedView");
      d = localField;
      localField.setAccessible(true);
      localField = InputMethodManager.class.getDeclaredField("mNextServedView");
      e = localField;
      localField.setAccessible(true);
      localField = InputMethodManager.class.getDeclaredField("mH");
      c = localField;
      localField.setAccessible(true);
      b = 1;
      label59:
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      break label59;
    }
  }
  
  /* Error */
  public void g(androidx.lifecycle.n paramn, androidx.lifecycle.Lifecycle.Event paramEvent)
  {
    // Byte code:
    //   0: aload_2
    //   1: getstatic 60	androidx/lifecycle/Lifecycle$Event:ON_DESTROY	Landroidx/lifecycle/Lifecycle$Event;
    //   4: if_acmpeq +4 -> 8
    //   7: return
    //   8: getstatic 22	androidx/activity/ImmLeaksCleaner:b	I
    //   11: ifne +6 -> 17
    //   14: invokestatic 62	androidx/activity/ImmLeaksCleaner:h	()V
    //   17: getstatic 22	androidx/activity/ImmLeaksCleaner:b	I
    //   20: iconst_1
    //   21: if_icmpne +97 -> 118
    //   24: aload_0
    //   25: getfield 64	androidx/activity/ImmLeaksCleaner:a	Landroid/app/Activity;
    //   28: ldc 66
    //   30: invokevirtual 72	android/app/Activity:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   33: checkcast 24	android/view/inputmethod/InputMethodManager
    //   36: astore_3
    //   37: getstatic 48	androidx/activity/ImmLeaksCleaner:c	Ljava/lang/reflect/Field;
    //   40: aload_3
    //   41: invokevirtual 78	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   44: astore_1
    //   45: aload_1
    //   46: ifnonnull +4 -> 50
    //   49: return
    //   50: aload_1
    //   51: monitorenter
    //   52: getstatic 34	androidx/activity/ImmLeaksCleaner:d	Ljava/lang/reflect/Field;
    //   55: aload_3
    //   56: invokevirtual 78	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   59: checkcast 80	android/view/View
    //   62: astore_2
    //   63: aload_2
    //   64: ifnonnull +6 -> 70
    //   67: aload_1
    //   68: monitorexit
    //   69: return
    //   70: aload_2
    //   71: invokevirtual 84	android/view/View:isAttachedToWindow	()Z
    //   74: ifeq +6 -> 80
    //   77: aload_1
    //   78: monitorexit
    //   79: return
    //   80: getstatic 44	androidx/activity/ImmLeaksCleaner:e	Ljava/lang/reflect/Field;
    //   83: aload_3
    //   84: aconst_null
    //   85: invokevirtual 88	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   88: aload_1
    //   89: monitorexit
    //   90: aload_3
    //   91: invokevirtual 91	android/view/inputmethod/InputMethodManager:isActive	()Z
    //   94: pop
    //   95: goto +23 -> 118
    //   98: astore_2
    //   99: aload_1
    //   100: monitorexit
    //   101: return
    //   102: astore_2
    //   103: goto +11 -> 114
    //   106: astore_2
    //   107: aload_1
    //   108: monitorexit
    //   109: return
    //   110: astore_2
    //   111: aload_1
    //   112: monitorexit
    //   113: return
    //   114: aload_1
    //   115: monitorexit
    //   116: aload_2
    //   117: athrow
    //   118: return
    //   119: astore_1
    //   120: goto -2 -> 118
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	123	0	this	ImmLeaksCleaner
    //   0	123	1	paramn	androidx.lifecycle.n
    //   0	123	2	paramEvent	androidx.lifecycle.Lifecycle.Event
    //   36	55	3	localInputMethodManager	InputMethodManager
    // Exception table:
    //   from	to	target	type
    //   80	88	98	java/lang/IllegalAccessException
    //   52	63	102	finally
    //   67	69	102	finally
    //   70	79	102	finally
    //   80	88	102	finally
    //   88	90	102	finally
    //   99	101	102	finally
    //   107	109	102	finally
    //   111	113	102	finally
    //   114	116	102	finally
    //   52	63	106	java/lang/ClassCastException
    //   52	63	110	java/lang/IllegalAccessException
    //   37	45	119	java/lang/IllegalAccessException
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.activity.ImmLeaksCleaner
 * JD-Core Version:    0.7.0.1
 */