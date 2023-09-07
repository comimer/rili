package androidx.core.widget;

import android.content.ClipData;
import android.content.ClipData.Item;
import android.content.Context;
import android.text.Editable;
import android.text.Selection;
import android.text.Spanned;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import androidx.core.view.c;
import androidx.core.view.v;

public final class p
  implements v
{
  private static CharSequence b(Context paramContext, ClipData.Item paramItem, int paramInt)
  {
    return a.a(paramContext, paramItem, paramInt);
  }
  
  private static void c(Editable paramEditable, CharSequence paramCharSequence)
  {
    int i = Selection.getSelectionStart(paramEditable);
    int j = Selection.getSelectionEnd(paramEditable);
    int k = Math.max(0, Math.min(i, j));
    j = Math.max(0, Math.max(i, j));
    Selection.setSelection(paramEditable, j);
    paramEditable.replace(k, j, paramCharSequence);
  }
  
  public c a(View paramView, c paramc)
  {
    if (Log.isLoggable("ReceiveContent", 3))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("onReceive: ");
      ((StringBuilder)localObject).append(paramc);
      Log.d("ReceiveContent", ((StringBuilder)localObject).toString());
    }
    if (paramc.d() == 2) {
      return paramc;
    }
    Object localObject = paramc.b();
    int i = paramc.c();
    paramc = (TextView)paramView;
    paramView = (Editable)paramc.getText();
    paramc = paramc.getContext();
    int j = 0;
    int m;
    for (int k = 0; j < ((ClipData)localObject).getItemCount(); k = m)
    {
      CharSequence localCharSequence = b(paramc, ((ClipData)localObject).getItemAt(j), i);
      m = k;
      if (localCharSequence != null) {
        if (k == 0)
        {
          c(paramView, localCharSequence);
          m = 1;
        }
        else
        {
          paramView.insert(Selection.getSelectionEnd(paramView), "\n");
          paramView.insert(Selection.getSelectionEnd(paramView), localCharSequence);
          m = k;
        }
      }
      j++;
    }
    return null;
  }
  
  private static final class a
  {
    static CharSequence a(Context paramContext, ClipData.Item paramItem, int paramInt)
    {
      if ((paramInt & 0x1) != 0)
      {
        paramItem = paramItem.coerceToText(paramContext);
        paramContext = paramItem;
        if ((paramItem instanceof Spanned)) {
          paramContext = paramItem.toString();
        }
        return paramContext;
      }
      return paramItem.coerceToStyledText(paramContext);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.widget.p
 * JD-Core Version:    0.7.0.1
 */