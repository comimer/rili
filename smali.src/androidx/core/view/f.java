package androidx.core.view;

import android.annotation.SuppressLint;
import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface.OnKeyListener;
import android.os.Build.VERSION;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.View;
import android.view.Window;
import android.view.Window.Callback;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class f
{
  private static boolean a = false;
  private static Method b;
  private static boolean c = false;
  private static Field d;
  
  private static boolean a(ActionBar paramActionBar, KeyEvent paramKeyEvent)
  {
    if (!a) {}
    try
    {
      b = paramActionBar.getClass().getMethod("onMenuKeyEvent", new Class[] { KeyEvent.class });
      label27:
      a = true;
      Method localMethod = b;
      if (localMethod != null) {}
      try
      {
        paramActionBar = localMethod.invoke(paramActionBar, new Object[] { paramKeyEvent });
        if (paramActionBar == null) {
          return false;
        }
        boolean bool = ((Boolean)paramActionBar).booleanValue();
        return bool;
      }
      catch (IllegalAccessException|InvocationTargetException paramActionBar)
      {
        label69:
        break label69;
      }
      return false;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      break label27;
    }
  }
  
  private static boolean b(Activity paramActivity, KeyEvent paramKeyEvent)
  {
    paramActivity.onUserInteraction();
    Window localWindow = paramActivity.getWindow();
    if (localWindow.hasFeature(8))
    {
      localObject = paramActivity.getActionBar();
      if ((paramKeyEvent.getKeyCode() == 82) && (localObject != null) && (a((ActionBar)localObject, paramKeyEvent))) {
        return true;
      }
    }
    if (localWindow.superDispatchKeyEvent(paramKeyEvent)) {
      return true;
    }
    Object localObject = localWindow.getDecorView();
    if (a0.g((View)localObject, paramKeyEvent)) {
      return true;
    }
    if (localObject != null) {
      localObject = ((View)localObject).getKeyDispatcherState();
    } else {
      localObject = null;
    }
    return paramKeyEvent.dispatch(paramActivity, (KeyEvent.DispatcherState)localObject, paramActivity);
  }
  
  private static boolean c(Dialog paramDialog, KeyEvent paramKeyEvent)
  {
    Object localObject = f(paramDialog);
    if ((localObject != null) && (((DialogInterface.OnKeyListener)localObject).onKey(paramDialog, paramKeyEvent.getKeyCode(), paramKeyEvent))) {
      return true;
    }
    localObject = paramDialog.getWindow();
    if (((Window)localObject).superDispatchKeyEvent(paramKeyEvent)) {
      return true;
    }
    localObject = ((Window)localObject).getDecorView();
    if (a0.g((View)localObject, paramKeyEvent)) {
      return true;
    }
    if (localObject != null) {
      localObject = ((View)localObject).getKeyDispatcherState();
    } else {
      localObject = null;
    }
    return paramKeyEvent.dispatch(paramDialog, (KeyEvent.DispatcherState)localObject, paramDialog);
  }
  
  public static boolean d(View paramView, KeyEvent paramKeyEvent)
  {
    return a0.h(paramView, paramKeyEvent);
  }
  
  @SuppressLint({"LambdaLast"})
  public static boolean e(a parama, View paramView, Window.Callback paramCallback, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (parama == null) {
      return false;
    }
    if (Build.VERSION.SDK_INT >= 28) {
      return parama.superDispatchKeyEvent(paramKeyEvent);
    }
    if ((paramCallback instanceof Activity)) {
      return b((Activity)paramCallback, paramKeyEvent);
    }
    if ((paramCallback instanceof Dialog)) {
      return c((Dialog)paramCallback, paramKeyEvent);
    }
    if (((paramView != null) && (a0.g(paramView, paramKeyEvent))) || (parama.superDispatchKeyEvent(paramKeyEvent))) {
      bool = true;
    }
    return bool;
  }
  
  private static DialogInterface.OnKeyListener f(Dialog paramDialog)
  {
    if (!c) {}
    try
    {
      Field localField = Dialog.class.getDeclaredField("mOnKeyListener");
      d = localField;
      localField.setAccessible(true);
      label23:
      c = true;
      localField = d;
      if (localField != null) {}
      try
      {
        paramDialog = (DialogInterface.OnKeyListener)localField.get(paramDialog);
        return paramDialog;
      }
      catch (IllegalAccessException paramDialog)
      {
        label46:
        break label46;
      }
      return null;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      break label23;
    }
  }
  
  public static abstract interface a
  {
    public abstract boolean superDispatchKeyEvent(KeyEvent paramKeyEvent);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.f
 * JD-Core Version:    0.7.0.1
 */