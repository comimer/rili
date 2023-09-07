package javax.mail.internet;

import com.sun.mail.util.f;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamException;
import java.text.DateFormat;
import java.text.DateFormatSymbols;
import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.logging.Level;

public class MailDateFormat
  extends SimpleDateFormat
{
  private static final int LEAP_SECOND = 60;
  private static final f LOGGER = new f(MailDateFormat.class, "DEBUG", false, System.out);
  private static final String PATTERN = "EEE, d MMM yyyy HH:mm:ss Z (z)";
  private static final int UNKNOWN_DAY_NAME = -1;
  private static final TimeZone UTC = TimeZone.getTimeZone("UTC");
  private static final long serialVersionUID = -8148227605210628779L;
  
  public MailDateFormat()
  {
    super("EEE, d MMM yyyy HH:mm:ss Z (z)", Locale.US);
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    paramObjectInputStream.defaultReadObject();
    super.applyPattern("EEE, d MMM yyyy HH:mm:ss Z (z)");
  }
  
  private void superApplyPattern(String paramString)
  {
    super.applyPattern(paramString);
  }
  
  private Date toDate(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    int i = paramInt7;
    if (paramInt7 == 60) {
      i = 59;
    }
    TimeZone localTimeZone = this.calendar.getTimeZone();
    try
    {
      this.calendar.setTimeZone(UTC);
      this.calendar.clear();
      this.calendar.set(paramInt4, paramInt3, paramInt2, paramInt5, paramInt6, i);
      if ((paramInt1 != -1) && (paramInt1 != this.calendar.get(7)))
      {
        localObject1 = new java/lang/IllegalArgumentException;
        ((IllegalArgumentException)localObject1).<init>("Inconsistent day-name");
        throw ((Throwable)localObject1);
      }
      this.calendar.add(12, paramInt8);
      Object localObject1 = this.calendar.getTime();
      return localObject1;
    }
    finally
    {
      this.calendar.setTimeZone(localTimeZone);
    }
  }
  
  private Object writeReplace()
    throws ObjectStreamException
  {
    MailDateFormat localMailDateFormat = new MailDateFormat();
    localMailDateFormat.superApplyPattern("EEE, d MMM yyyy HH:mm:ss 'XXXXX' (z)");
    localMailDateFormat.setTimeZone(getTimeZone());
    return localMailDateFormat;
  }
  
  public void applyLocalizedPattern(String paramString)
  {
    throw new UnsupportedOperationException("Method applyLocalizedPattern() shouldn't be called");
  }
  
  public void applyPattern(String paramString)
  {
    throw new UnsupportedOperationException("Method applyPattern() shouldn't be called");
  }
  
  public MailDateFormat clone()
  {
    return (MailDateFormat)super.clone();
  }
  
  public StringBuffer format(Date paramDate, StringBuffer paramStringBuffer, FieldPosition paramFieldPosition)
  {
    return super.format(paramDate, paramStringBuffer, paramFieldPosition);
  }
  
  public Date get2DigitYearStart()
  {
    throw new UnsupportedOperationException("Method get2DigitYearStart() shouldn't be called");
  }
  
  public Date parse(String paramString, ParsePosition paramParsePosition)
  {
    if ((paramString != null) && (paramParsePosition != null))
    {
      if ((paramParsePosition.getIndex() >= 0) && (paramParsePosition.getIndex() < paramString.length()))
      {
        if (isLenient()) {
          paramString = new b(paramString, paramParsePosition).d();
        } else {
          paramString = new c(paramString, paramParsePosition).d();
        }
        return paramString;
      }
      return null;
    }
    throw null;
  }
  
  public void set2DigitYearStart(Date paramDate)
  {
    throw new UnsupportedOperationException("Method set2DigitYearStart() shouldn't be called");
  }
  
  public void setCalendar(Calendar paramCalendar)
  {
    throw new UnsupportedOperationException("Method setCalendar() shouldn't be called");
  }
  
  public void setDateFormatSymbols(DateFormatSymbols paramDateFormatSymbols)
  {
    throw new UnsupportedOperationException("Method setDateFormatSymbols() shouldn't be called");
  }
  
  public void setNumberFormat(NumberFormat paramNumberFormat)
  {
    throw new UnsupportedOperationException("Method setNumberFormat() shouldn't be called");
  }
  
  private static abstract class a
  {
    final String a;
    final ParsePosition b;
    
    a(String paramString, ParsePosition paramParsePosition)
    {
      this.a = paramString;
      this.b = paramParsePosition;
    }
    
    final int a()
    {
      int i = b();
      if ((48 <= i) && (i <= 57)) {
        return Character.digit((char)i, 10);
      }
      if (i != -1)
      {
        ParsePosition localParsePosition = this.b;
        localParsePosition.setIndex(localParsePosition.getIndex() - 1);
      }
      return -1;
    }
    
    final int b()
    {
      if (this.b.getIndex() < this.a.length())
      {
        int i = this.a.charAt(this.b.getIndex());
        ParsePosition localParsePosition = this.b;
        localParsePosition.setIndex(localParsePosition.getIndex() + 1);
        return i;
      }
      return -1;
    }
    
    boolean c(int paramInt)
    {
      boolean bool;
      if (paramInt % 100 < 60) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    final Date d()
    {
      int i = this.b.getIndex();
      try
      {
        Date localDate = x();
        return localDate;
      }
      catch (Exception localException)
      {
        if (MailDateFormat.LOGGER.f(Level.FINE))
        {
          f localf = MailDateFormat.LOGGER;
          Level localLevel = Level.FINE;
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Bad date: '");
          localStringBuilder.append(this.a);
          localStringBuilder.append("'");
          localf.j(localLevel, localStringBuilder.toString(), localException);
        }
        ParsePosition localParsePosition = this.b;
        localParsePosition.setErrorIndex(localParsePosition.getIndex());
        this.b.setIndex(i);
      }
      return null;
    }
    
    final int e(int paramInt)
      throws ParseException
    {
      return f(paramInt, paramInt);
    }
    
    final int f(int paramInt1, int paramInt2)
      throws ParseException
    {
      return g(paramInt1, paramInt2, false);
    }
    
    final int g(int paramInt1, int paramInt2, boolean paramBoolean)
      throws ParseException
    {
      int i = 0;
      int j = 0;
      while ((i < paramInt2) && (m()))
      {
        j = j * 10 + a();
        i++;
      }
      if ((i >= paramInt1) && ((i != paramInt2) || (paramBoolean) || (!m()))) {
        return j;
      }
      Object localObject = this.b;
      ((ParsePosition)localObject).setIndex(((ParsePosition)localObject).getIndex() - i);
      if (paramInt1 == paramInt2)
      {
        localObject = Integer.toString(paramInt1);
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("between ");
        ((StringBuilder)localObject).append(paramInt1);
        ((StringBuilder)localObject).append(" and ");
        ((StringBuilder)localObject).append(paramInt2);
        localObject = ((StringBuilder)localObject).toString();
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Invalid input: expected ");
      localStringBuilder.append((String)localObject);
      localStringBuilder.append(" ASCII digits");
      throw new ParseException(localStringBuilder.toString(), this.b.getIndex());
    }
    
    final void h(char paramChar)
      throws ParseException
    {
      if (s(paramChar)) {
        return;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Invalid input: expected '");
      localStringBuilder.append(paramChar);
      localStringBuilder.append("'");
      throw new ParseException(localStringBuilder.toString(), this.b.getIndex());
    }
    
    final int i()
      throws ParseException
    {
      int i = b();
      if (i != -1)
      {
        if (i != 70)
        {
          if (i != 77)
          {
            if (i != 87)
            {
              if (i != 83)
              {
                if (i == 84)
                {
                  if (v('u', 'e')) {
                    return 3;
                  }
                  if (v('h', 'u')) {
                    return 5;
                  }
                }
              }
              else
              {
                if (v('u', 'n')) {
                  return 1;
                }
                if (v('a', 't')) {
                  return 7;
                }
              }
            }
            else if (v('e', 'd')) {
              return 4;
            }
          }
          else if (v('o', 'n')) {
            return 2;
          }
        }
        else if (v('r', 'i')) {
          return 6;
        }
        ParsePosition localParsePosition = this.b;
        localParsePosition.setIndex(localParsePosition.getIndex() - 1);
        throw new ParseException("Invalid day-name", this.b.getIndex());
      }
      throw new ParseException("Invalid day-name", this.b.getIndex());
    }
    
    final void j()
      throws ParseException
    {
      if (t()) {
        return;
      }
      throw new ParseException("Invalid input: expected FWS", this.b.getIndex());
    }
    
    final int k(boolean paramBoolean)
      throws ParseException
    {
      switch (b())
      {
      default: 
        break;
      case 115: 
        if (paramBoolean) {
          break label684;
        }
        break;
      case 111: 
        if (paramBoolean) {
          break label684;
        }
        break;
      case 110: 
        if (paramBoolean) {
          break label684;
        }
        break;
      case 109: 
        if (paramBoolean) {
          break label684;
        }
        break;
      case 106: 
        if (paramBoolean) {
          break label684;
        }
        break;
      case 102: 
        if (paramBoolean) {
          break label684;
        }
        break;
      case 100: 
        if (paramBoolean) {
          break label684;
        }
        break;
      case 97: 
        if (paramBoolean) {
          break label684;
        }
        break;
      case 83: 
        if ((!v('e', 'p')) && ((paramBoolean) || (!q('e', 'E', 'p', 'P')))) {
          break label684;
        }
        return 8;
      case 79: 
        if ((!v('c', 't')) && ((paramBoolean) || (!q('c', 'C', 't', 'T')))) {
          break label684;
        }
        return 9;
      case 78: 
        if ((!v('o', 'v')) && ((paramBoolean) || (!q('o', 'O', 'v', 'V')))) {
          break label684;
        }
        return 10;
      case 77: 
        if ((!s('a')) && ((paramBoolean) || (!s('A')))) {
          break label684;
        }
        if ((!s('r')) && ((paramBoolean) || (!s('R'))))
        {
          if ((!s('y')) && ((paramBoolean) || (!s('Y'))))
          {
            localParsePosition = this.b;
            localParsePosition.setIndex(localParsePosition.getIndex() - 1);
            break label684;
          }
          return 4;
        }
        return 2;
      case 74: 
        if ((!s('u')) && ((paramBoolean) || (!s('U'))))
        {
          if ((!v('a', 'n')) && ((paramBoolean) || (!q('a', 'A', 'n', 'N')))) {
            break label684;
          }
          return 0;
        }
        if ((!s('l')) && ((paramBoolean) || (!s('L'))))
        {
          if ((!s('n')) && ((paramBoolean) || (!s('N'))))
          {
            localParsePosition = this.b;
            localParsePosition.setIndex(localParsePosition.getIndex() - 1);
            break label684;
          }
          return 5;
        }
        return 6;
      case 70: 
        if ((!v('e', 'b')) && ((paramBoolean) || (!q('e', 'E', 'b', 'B')))) {
          break label684;
        }
        return 1;
      case 68: 
        if ((!v('e', 'c')) && ((paramBoolean) || (!q('e', 'E', 'c', 'C')))) {
          break label684;
        }
        return 11;
      case 65: 
        if ((!v('u', 'g')) && ((paramBoolean) || (!q('u', 'U', 'g', 'G'))))
        {
          if ((!v('p', 'r')) && ((paramBoolean) || (!q('p', 'P', 'r', 'R')))) {
            break label684;
          }
          return 3;
        }
        return 7;
      }
      throw new ParseException("Invalid month", this.b.getIndex());
      label684:
      ParsePosition localParsePosition = this.b;
      localParsePosition.setIndex(localParsePosition.getIndex() - 1);
      throw new ParseException("Invalid month", this.b.getIndex());
    }
    
    final int l()
      throws ParseException
    {
      int i = b();
      int j = -1;
      if ((i != 43) && (i != 45))
      {
        if (i != -1)
        {
          localParsePosition = this.b;
          localParsePosition.setIndex(localParsePosition.getIndex() - 1);
        }
        throw new ParseException("Invalid zone", this.b.getIndex());
      }
      int k = g(4, 4, true);
      if (c(k))
      {
        if (i != 43) {
          j = 1;
        }
        return j * (k / 100 * 60 + k % 100);
      }
      ParsePosition localParsePosition = this.b;
      localParsePosition.setIndex(localParsePosition.getIndex() - 5);
      throw new ParseException("Invalid zone", this.b.getIndex());
    }
    
    final boolean m()
    {
      boolean bool;
      if ((this.b.getIndex() < this.a.length()) && ('0' <= this.a.charAt(this.b.getIndex())) && (this.a.charAt(this.b.getIndex()) <= '9')) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    final boolean n(char paramChar)
    {
      boolean bool;
      if ((this.b.getIndex() < this.a.length()) && (this.a.charAt(this.b.getIndex()) == paramChar)) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    boolean o()
    {
      boolean bool;
      if ((this.b.getIndex() < this.a.length()) && ((this.a.charAt(this.b.getIndex()) == ' ') || (this.a.charAt(this.b.getIndex()) == '\t') || (this.a.charAt(this.b.getIndex()) == '\r'))) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    final boolean p(char paramChar1, char paramChar2)
    {
      boolean bool;
      if ((!s(paramChar1)) && (!s(paramChar2))) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    final boolean q(char paramChar1, char paramChar2, char paramChar3, char paramChar4)
    {
      if (p(paramChar1, paramChar2))
      {
        if (p(paramChar3, paramChar4)) {
          return true;
        }
        ParsePosition localParsePosition = this.b;
        localParsePosition.setIndex(localParsePosition.getIndex() - 1);
      }
      return false;
    }
    
    final boolean r(char paramChar1, char paramChar2, char paramChar3, char paramChar4, char paramChar5, char paramChar6)
    {
      if (q(paramChar1, paramChar2, paramChar3, paramChar4))
      {
        if (p(paramChar5, paramChar6)) {
          return true;
        }
        ParsePosition localParsePosition = this.b;
        localParsePosition.setIndex(localParsePosition.getIndex() - 2);
      }
      return false;
    }
    
    final boolean s(char paramChar)
    {
      if ((this.b.getIndex() < this.a.length()) && (this.a.charAt(this.b.getIndex()) == paramChar))
      {
        ParsePosition localParsePosition = this.b;
        localParsePosition.setIndex(localParsePosition.getIndex() + 1);
        return true;
      }
      return false;
    }
    
    boolean t()
    {
      if (s(' '))
      {
        if (!o()) {
          return true;
        }
        ParsePosition localParsePosition = this.b;
        localParsePosition.setIndex(localParsePosition.getIndex() - 1);
      }
      else if (!o())
      {
        return false;
      }
      int i = this.b.getIndex();
      if (w())
      {
        while (u()) {
          if (!w())
          {
            this.b.setIndex(i);
            return false;
          }
        }
        return true;
      }
      if ((u()) && (w())) {
        return true;
      }
      this.b.setIndex(i);
      return false;
    }
    
    final boolean u()
    {
      return v('\r', '\n');
    }
    
    final boolean v(char paramChar1, char paramChar2)
    {
      if (s(paramChar1))
      {
        if (s(paramChar2)) {
          return true;
        }
        ParsePosition localParsePosition = this.b;
        localParsePosition.setIndex(localParsePosition.getIndex() - 1);
      }
      return false;
    }
    
    final boolean w()
    {
      int i = this.b.getIndex();
      while (p(' ', '\t')) {}
      boolean bool;
      if (this.b.getIndex() > i) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    abstract Date x()
      throws ParseException;
  }
  
  private class b
    extends MailDateFormat.c
  {
    private Boolean d;
    
    b(String paramString, ParsePosition paramParsePosition)
    {
      super(paramString, paramParsePosition);
    }
    
    void A()
      throws ParseException
    {
      t();
    }
    
    void B()
      throws ParseException
    {
      Boolean localBoolean = this.d;
      if (localBoolean == null)
      {
        this.d = Boolean.valueOf(s('-') ^ true);
        t();
      }
      else if (localBoolean.booleanValue())
      {
        t();
      }
      else
      {
        h('-');
      }
    }
    
    int C()
      throws ParseException
    {
      return f(1, 2);
    }
    
    int D()
      throws ParseException
    {
      return f(1, 2);
    }
    
    int F()
    {
      while ((this.b.getIndex() < this.a.length()) && (!m()))
      {
        ParsePosition localParsePosition = this.b;
        localParsePosition.setIndex(localParsePosition.getIndex() + 1);
      }
      return -1;
    }
    
    int G()
      throws ParseException
    {
      return f(1, 2);
    }
    
    int H()
      throws ParseException
    {
      int i = f(1, 8);
      if (i >= 1000) {
        return i;
      }
      if (i >= 50) {
        return i + 1900;
      }
      return i + 2000;
    }
    
    int I()
      throws ParseException
    {
      try
      {
        if (this.b.getIndex() < this.a.length())
        {
          if ((!n('+')) && (!n('-')))
          {
            if (q('U', 'u', 'T', 't')) {
              return 0;
            }
            if (r('G', 'g', 'M', 'm', 'T', 't')) {
              return 0;
            }
            boolean bool = p('E', 'e');
            int i;
            if (bool)
            {
              i = 4;
            }
            else if (p('C', 'c'))
            {
              i = 5;
            }
            else if (p('M', 'm'))
            {
              i = 6;
            }
            else
            {
              if (!p('P', 'p')) {
                break label216;
              }
              i = 7;
            }
            if (q('S', 's', 'T', 't')) {
              i++;
            } else {
              if (!q('D', 'd', 'T', 't')) {
                break label182;
              }
            }
            return i * 60;
            label182:
            localObject = this.b;
            ((ParsePosition)localObject).setIndex(((ParsePosition)localObject).getIndex() - 1);
            localObject = new java/text/ParseException;
            ((ParseException)localObject).<init>("Invalid zone", this.b.getIndex());
            throw ((Throwable)localObject);
            label216:
            localObject = new java/text/ParseException;
            ((ParseException)localObject).<init>("Invalid zone", this.b.getIndex());
            throw ((Throwable)localObject);
          }
          return l();
        }
        Object localObject = new java/text/ParseException;
        ((ParseException)localObject).<init>("Missing zone", this.b.getIndex());
        throw ((Throwable)localObject);
      }
      catch (ParseException localParseException)
      {
        f localf = MailDateFormat.LOGGER;
        Level localLevel = Level.FINE;
        if (localf.f(localLevel))
        {
          localf = MailDateFormat.LOGGER;
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("No timezone? : '");
          localStringBuilder.append(this.a);
          localStringBuilder.append("'");
          localf.j(localLevel, localStringBuilder.toString(), localParseException);
        }
      }
      return 0;
    }
    
    boolean c(int paramInt)
    {
      return true;
    }
    
    boolean o()
    {
      boolean bool;
      if ((!super.o()) && ((this.b.getIndex() >= this.a.length()) || (this.a.charAt(this.b.getIndex()) != '\n'))) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    boolean t()
    {
      boolean bool = o();
      while (this.b.getIndex() < this.a.length())
      {
        int i = this.a.charAt(this.b.getIndex());
        if ((i != 9) && (i != 10) && (i != 13) && (i != 32)) {
          break;
        }
        ParsePosition localParsePosition = this.b;
        localParsePosition.setIndex(localParsePosition.getIndex() + 1);
      }
      return bool;
    }
    
    boolean y()
    {
      return false;
    }
    
    int z()
      throws ParseException
    {
      t();
      return f(1, 3);
    }
  }
  
  private class c
    extends MailDateFormat.a
  {
    c(String paramString, ParsePosition paramParsePosition)
    {
      super(paramParsePosition);
    }
    
    void A()
      throws ParseException
    {
      j();
    }
    
    void B()
      throws ParseException
    {
      j();
    }
    
    int C()
      throws ParseException
    {
      return e(2);
    }
    
    int D()
      throws ParseException
    {
      return e(2);
    }
    
    int E()
      throws ParseException
    {
      B();
      int i = k(y());
      B();
      return i;
    }
    
    int F()
      throws ParseException
    {
      int i;
      if (!m())
      {
        t();
        i = i();
        h(',');
      }
      else
      {
        i = -1;
      }
      return i;
    }
    
    int G()
      throws ParseException
    {
      return e(2);
    }
    
    int H()
      throws ParseException
    {
      int i = f(4, 8);
      if (i >= 1900) {
        return i;
      }
      ParsePosition localParsePosition = this.b;
      localParsePosition.setIndex(localParsePosition.getIndex() - 4);
      while (this.a.charAt(this.b.getIndex() - 1) == '0')
      {
        localParsePosition = this.b;
        localParsePosition.setIndex(localParsePosition.getIndex() - 1);
      }
      throw new ParseException("Invalid year", this.b.getIndex());
    }
    
    int I()
      throws ParseException
    {
      return l();
    }
    
    Date x()
      throws ParseException
    {
      int i = F();
      int j = z();
      int k = E();
      int m = H();
      j();
      int n = C();
      h(':');
      int i1 = D();
      int i2;
      if (s(':')) {
        i2 = G();
      } else {
        i2 = 0;
      }
      A();
      int i3 = I();
      try
      {
        Date localDate = MailDateFormat.this.toDate(i, j, k, m, n, i1, i2, i3);
        return localDate;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw new ParseException("Invalid input: some of the calendar fields have invalid values, or day-name is inconsistent with date", this.b.getIndex());
      }
    }
    
    boolean y()
    {
      return true;
    }
    
    int z()
      throws ParseException
    {
      t();
      return f(1, 2);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.internet.MailDateFormat
 * JD-Core Version:    0.7.0.1
 */