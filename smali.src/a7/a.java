package a7;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import n5.e;
import n5.f;

public class a
  implements View.OnClickListener
{
  public final View a;
  public final TextView b;
  public final TextView c;
  private a d;
  
  public a(View paramView, TextView paramTextView1, TextView paramTextView2)
  {
    this.a = paramView;
    this.b = paramTextView1;
    paramTextView1.setOnClickListener(this);
    this.c = paramTextView2;
    paramTextView2.setOnClickListener(this);
  }
  
  public static a a(Context paramContext)
  {
    paramContext = LayoutInflater.from(paramContext).inflate(f.o, null);
    paramContext.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    return new a(paramContext, (TextView)paramContext.findViewById(e.r), (TextView)paramContext.findViewById(e.E));
  }
  
  public void b(String paramString)
  {
    this.b.setText(paramString);
    TextView localTextView = this.b;
    int i;
    if (TextUtils.isEmpty(paramString)) {
      i = 8;
    } else {
      i = 0;
    }
    localTextView.setVisibility(i);
  }
  
  public void c(a parama)
  {
    this.d = parama;
  }
  
  public void onClick(View paramView)
  {
    a locala = this.d;
    if (locala == null) {
      return;
    }
    if (paramView == this.c) {
      locala.b(paramView);
    } else if (paramView == this.b) {
      locala.a(paramView);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(View paramView);
    
    public abstract void b(View paramView);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a7.a
 * JD-Core Version:    0.7.0.1
 */