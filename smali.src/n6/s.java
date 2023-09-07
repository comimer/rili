package n6;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnShowListener;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.View;
import android.widget.TextView;
import com.xiaomi.passport.jsb.PassportJsbMethodException;
import m6.b;
import m6.d;
import org.json.JSONObject;

public class s
  extends b
{
  private AlertDialog a;
  
  public String getName()
  {
    return "showDialog";
  }
  
  public d invoke(final com.xiaomi.passport.webview.a parama, JSONObject paramJSONObject)
    throws PassportJsbMethodException
  {
    Object localObject1 = this.a;
    if (localObject1 != null) {
      ((Dialog)localObject1).dismiss();
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(parama.getContext());
    Object localObject2 = paramJSONObject.optString("title");
    localObject1 = getParamsStringFieldOrThrow(paramJSONObject, "message");
    int i = 0;
    boolean bool = paramJSONObject.optBoolean("cancelable", false);
    if (!TextUtils.isEmpty((CharSequence)localObject2)) {
      localBuilder.setTitle((CharSequence)localObject2);
    }
    localObject2 = Html.fromHtml((String)localObject1);
    localObject1 = new SpannableStringBuilder((CharSequence)localObject2);
    localObject2 = (URLSpan[])((SpannableStringBuilder)localObject1).getSpans(0, ((CharSequence)localObject2).length(), URLSpan.class);
    int j = localObject2.length;
    Object localObject3;
    while (i < j)
    {
      localObject3 = localObject2[i];
      int k = ((SpannableStringBuilder)localObject1).getSpanStart(localObject3);
      int m = ((SpannableStringBuilder)localObject1).getSpanEnd(localObject3);
      int n = ((SpannableStringBuilder)localObject1).getSpanFlags(localObject3);
      ((SpannableStringBuilder)localObject1).setSpan(new a(((URLSpan)localObject3).getURL(), parama), k, m, n);
      ((SpannableStringBuilder)localObject1).removeSpan(localObject3);
      i++;
    }
    localBuilder.setMessage((CharSequence)localObject1);
    localBuilder.setCancelable(bool);
    localObject1 = paramJSONObject.optJSONObject("positiveButton");
    localObject2 = null;
    if (localObject1 != null)
    {
      localObject3 = getParamsStringFieldOrThrow((JSONObject)localObject1, "text");
      localObject1 = ((JSONObject)localObject1).optString("callbackId");
      if (!TextUtils.isEmpty((CharSequence)localObject1)) {
        localObject1 = new b(parama, (String)localObject1);
      } else {
        localObject1 = null;
      }
      localBuilder.setPositiveButton((CharSequence)localObject3, (DialogInterface.OnClickListener)localObject1);
    }
    localObject1 = paramJSONObject.optJSONObject("negativeButton");
    if (localObject1 != null)
    {
      localObject3 = getParamsStringFieldOrThrow((JSONObject)localObject1, "text");
      localObject1 = ((JSONObject)localObject1).optString("callbackId");
      if (!TextUtils.isEmpty((CharSequence)localObject1)) {
        localObject1 = new c(parama, (String)localObject1);
      } else {
        localObject1 = null;
      }
      localBuilder.setNegativeButton((CharSequence)localObject3, (DialogInterface.OnClickListener)localObject1);
    }
    paramJSONObject = paramJSONObject.optJSONObject("neutralButton");
    if (paramJSONObject != null)
    {
      localObject1 = getParamsStringFieldOrThrow(paramJSONObject, "text");
      localObject3 = paramJSONObject.optString("callbackId");
      paramJSONObject = (JSONObject)localObject2;
      if (!TextUtils.isEmpty((CharSequence)localObject3)) {
        paramJSONObject = new d(parama, (String)localObject3);
      }
      localBuilder.setNeutralButton((CharSequence)localObject1, paramJSONObject);
    }
    parama = localBuilder.create();
    this.a = parama;
    parama.setOnShowListener(new e());
    this.a.show();
    return new d(true);
  }
  
  public void release(com.xiaomi.passport.webview.a parama)
  {
    parama = this.a;
    if (parama != null)
    {
      parama.dismiss();
      this.a = null;
    }
  }
  
  class a
    extends ClickableSpan
  {
    a(String paramString, com.xiaomi.passport.webview.a parama) {}
    
    public void onClick(View paramView)
    {
      if (!TextUtils.isEmpty(this.a))
      {
        parama.loadUrl(this.a);
        s.a(s.this).dismiss();
      }
    }
  }
  
  class b
    implements DialogInterface.OnClickListener
  {
    b(com.xiaomi.passport.webview.a parama, String paramString) {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      m6.a.b(parama, this.b, new JSONObject());
    }
  }
  
  class c
    implements DialogInterface.OnClickListener
  {
    c(com.xiaomi.passport.webview.a parama, String paramString) {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      m6.a.b(parama, this.b, new JSONObject());
    }
  }
  
  class d
    implements DialogInterface.OnClickListener
  {
    d(com.xiaomi.passport.webview.a parama, String paramString) {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      m6.a.b(parama, this.b, new JSONObject());
    }
  }
  
  class e
    implements DialogInterface.OnShowListener
  {
    e() {}
    
    public void onShow(DialogInterface paramDialogInterface)
    {
      if (s.a(s.this) == null) {
        return;
      }
      paramDialogInterface = (TextView)s.a(s.this).findViewById(16908299);
      if (paramDialogInterface != null)
      {
        paramDialogInterface.setLinksClickable(true);
        paramDialogInterface.setMovementMethod(LinkMovementMethod.getInstance());
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.s
 * JD-Core Version:    0.7.0.1
 */