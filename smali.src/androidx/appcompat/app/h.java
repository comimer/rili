package androidx.appcompat.app;

import android.app.Dialog;
import android.os.Bundle;
import android.view.Window;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c;

public class h
  extends c
{
  public h() {}
  
  public h(int paramInt)
  {
    super(paramInt);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    return new g(getContext(), getTheme());
  }
  
  public void setupDialog(Dialog paramDialog, int paramInt)
  {
    if ((paramDialog instanceof g))
    {
      g localg = (g)paramDialog;
      if ((paramInt != 1) && (paramInt != 2))
      {
        if (paramInt == 3) {
          paramDialog.getWindow().addFlags(24);
        }
      }
      else {
        localg.supportRequestWindowFeature(1);
      }
    }
    else
    {
      super.setupDialog(paramDialog, paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.app.h
 * JD-Core Version:    0.7.0.1
 */