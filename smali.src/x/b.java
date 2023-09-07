package x;

import android.database.Cursor;
import android.widget.Filter;
import android.widget.Filter.FilterResults;

class b
  extends Filter
{
  a a;
  
  b(a parama)
  {
    this.a = parama;
  }
  
  public CharSequence convertResultToString(Object paramObject)
  {
    return this.a.convertToString((Cursor)paramObject);
  }
  
  protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    Cursor localCursor = this.a.c(paramCharSequence);
    paramCharSequence = new Filter.FilterResults();
    if (localCursor != null)
    {
      paramCharSequence.count = localCursor.getCount();
      paramCharSequence.values = localCursor;
    }
    else
    {
      paramCharSequence.count = 0;
      paramCharSequence.values = null;
    }
    return paramCharSequence;
  }
  
  protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    paramCharSequence = this.a.b();
    paramFilterResults = paramFilterResults.values;
    if ((paramFilterResults != null) && (paramFilterResults != paramCharSequence)) {
      this.a.a((Cursor)paramFilterResults);
    }
  }
  
  static abstract interface a
  {
    public abstract void a(Cursor paramCursor);
    
    public abstract Cursor b();
    
    public abstract Cursor c(CharSequence paramCharSequence);
    
    public abstract CharSequence convertToString(Cursor paramCursor);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x.b
 * JD-Core Version:    0.7.0.1
 */