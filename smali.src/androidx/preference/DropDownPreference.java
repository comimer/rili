package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import androidx.recyclerview.widget.RecyclerView.c0;

public class DropDownPreference
  extends ListPreference
{
  private final Context h0;
  private final ArrayAdapter i0;
  private Spinner j0;
  private final AdapterView.OnItemSelectedListener k0 = new a();
  
  public DropDownPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, m.c);
  }
  
  public DropDownPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public DropDownPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    this.h0 = paramContext;
    this.i0 = e1();
    g1();
  }
  
  private int f1(String paramString)
  {
    CharSequence[] arrayOfCharSequence = a1();
    if ((paramString != null) && (arrayOfCharSequence != null)) {
      for (int i = arrayOfCharSequence.length - 1; i >= 0; i--) {
        if (arrayOfCharSequence[i].equals(paramString)) {
          return i;
        }
      }
    }
    return -1;
  }
  
  private void g1()
  {
    this.i0.clear();
    if (Y0() != null) {
      for (CharSequence localCharSequence : Y0()) {
        this.i0.add(localCharSequence.toString());
      }
    }
  }
  
  protected void R()
  {
    super.R();
    ArrayAdapter localArrayAdapter = this.i0;
    if (localArrayAdapter != null) {
      localArrayAdapter.notifyDataSetChanged();
    }
  }
  
  public void X(l paraml)
  {
    Spinner localSpinner = (Spinner)paraml.itemView.findViewById(o.e);
    this.j0 = localSpinner;
    localSpinner.setAdapter(this.i0);
    this.j0.setOnItemSelectedListener(this.k0);
    this.j0.setSelection(f1(b1()));
    super.X(paraml);
  }
  
  protected void Y()
  {
    this.j0.performClick();
  }
  
  protected ArrayAdapter e1()
  {
    return new ArrayAdapter(this.h0, 17367049);
  }
  
  class a
    implements AdapterView.OnItemSelectedListener
  {
    a() {}
    
    public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      if (paramInt >= 0)
      {
        paramAdapterView = DropDownPreference.this.a1()[paramInt].toString();
        if ((!paramAdapterView.equals(DropDownPreference.this.b1())) && (DropDownPreference.this.c(paramAdapterView))) {
          DropDownPreference.this.d1(paramAdapterView);
        }
      }
    }
    
    public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.DropDownPreference
 * JD-Core Version:    0.7.0.1
 */