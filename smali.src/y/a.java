package y;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import androidx.databinding.h;

public class a
{
  public static void a(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramCompoundButton.isChecked() != paramBoolean) {
      paramCompoundButton.setChecked(paramBoolean);
    }
  }
  
  public static void b(CompoundButton paramCompoundButton, CompoundButton.OnCheckedChangeListener paramOnCheckedChangeListener, final h paramh)
  {
    if (paramh == null) {
      paramCompoundButton.setOnCheckedChangeListener(paramOnCheckedChangeListener);
    } else {
      paramCompoundButton.setOnCheckedChangeListener(new a(paramOnCheckedChangeListener, paramh));
    }
  }
  
  class a
    implements CompoundButton.OnCheckedChangeListener
  {
    a(h paramh) {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      CompoundButton.OnCheckedChangeListener localOnCheckedChangeListener = a.this;
      if (localOnCheckedChangeListener != null) {
        localOnCheckedChangeListener.onCheckedChanged(paramCompoundButton, paramBoolean);
      }
      paramh.onChange();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y.a
 * JD-Core Version:    0.7.0.1
 */