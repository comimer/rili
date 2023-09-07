package androidx.appcompat.view.menu;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.Adapter;
import androidx.appcompat.app.c;
import androidx.appcompat.app.c.a;

class h
  implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, m.a
{
  private g a;
  private c b;
  e c;
  private m.a d;
  
  public h(g paramg)
  {
    this.a = paramg;
  }
  
  public boolean a(g paramg)
  {
    m.a locala = this.d;
    if (locala != null) {
      return locala.a(paramg);
    }
    return false;
  }
  
  public void b()
  {
    c localc = this.b;
    if (localc != null) {
      localc.dismiss();
    }
  }
  
  public void c(IBinder paramIBinder)
  {
    Object localObject1 = this.a;
    c.a locala = new c.a(((g)localObject1).getContext());
    Object localObject2 = new e(locala.getContext(), d.g.j);
    this.c = ((e)localObject2);
    ((e)localObject2).setCallback(this);
    this.a.addMenuPresenter(this.c);
    locala.setAdapter(this.c.a(), this);
    localObject2 = ((g)localObject1).getHeaderView();
    if (localObject2 != null) {
      locala.setCustomTitle((View)localObject2);
    } else {
      locala.setIcon(((g)localObject1).getHeaderIcon()).setTitle(((g)localObject1).getHeaderTitle());
    }
    locala.setOnKeyListener(this);
    localObject1 = locala.create();
    this.b = ((c)localObject1);
    ((Dialog)localObject1).setOnDismissListener(this);
    localObject1 = this.b.getWindow().getAttributes();
    ((WindowManager.LayoutParams)localObject1).type = 1003;
    if (paramIBinder != null) {
      ((WindowManager.LayoutParams)localObject1).token = paramIBinder;
    }
    ((WindowManager.LayoutParams)localObject1).flags |= 0x20000;
    this.b.show();
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.performItemAction((i)this.c.a().getItem(paramInt), 0);
  }
  
  public void onCloseMenu(g paramg, boolean paramBoolean)
  {
    if ((paramBoolean) || (paramg == this.a)) {
      b();
    }
    m.a locala = this.d;
    if (locala != null) {
      locala.onCloseMenu(paramg, paramBoolean);
    }
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    this.c.onCloseMenu(this.a, true);
  }
  
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 82) || (paramInt == 4)) {
      if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getRepeatCount() == 0))
      {
        paramDialogInterface = this.b.getWindow();
        if (paramDialogInterface != null)
        {
          paramDialogInterface = paramDialogInterface.getDecorView();
          if (paramDialogInterface != null)
          {
            paramDialogInterface = paramDialogInterface.getKeyDispatcherState();
            if (paramDialogInterface != null)
            {
              paramDialogInterface.startTracking(paramKeyEvent, this);
              return true;
            }
          }
        }
      }
      else if ((paramKeyEvent.getAction() == 1) && (!paramKeyEvent.isCanceled()))
      {
        Object localObject = this.b.getWindow();
        if (localObject != null)
        {
          localObject = ((Window)localObject).getDecorView();
          if (localObject != null)
          {
            localObject = ((View)localObject).getKeyDispatcherState();
            if ((localObject != null) && (((KeyEvent.DispatcherState)localObject).isTracking(paramKeyEvent)))
            {
              this.a.close(true);
              paramDialogInterface.dismiss();
              return true;
            }
          }
        }
      }
    }
    return this.a.performShortcut(paramInt, paramKeyEvent, 0);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.view.menu.h
 * JD-Core Version:    0.7.0.1
 */