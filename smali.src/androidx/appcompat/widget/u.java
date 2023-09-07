package androidx.appcompat.widget;

import android.content.Context;
import android.view.View;
import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.core.util.h;

final class u
{
  private TextView a;
  private TextClassifier b;
  
  u(TextView paramTextView)
  {
    this.a = ((TextView)h.g(paramTextView));
  }
  
  public TextClassifier a()
  {
    TextClassifier localTextClassifier = this.b;
    Object localObject = localTextClassifier;
    if (localTextClassifier == null)
    {
      localObject = (TextClassificationManager)this.a.getContext().getSystemService(TextClassificationManager.class);
      if (localObject != null) {
        return ((TextClassificationManager)localObject).getTextClassifier();
      }
      localObject = TextClassifier.NO_OP;
    }
    return localObject;
  }
  
  public void b(TextClassifier paramTextClassifier)
  {
    this.b = paramTextClassifier;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.u
 * JD-Core Version:    0.7.0.1
 */