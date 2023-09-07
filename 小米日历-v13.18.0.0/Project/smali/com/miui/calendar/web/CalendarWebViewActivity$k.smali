.class Lcom/miui/calendar/web/CalendarWebViewActivity$k;
.super Ljava/lang/Object;
.source "CalendarWebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/web/CalendarWebViewActivity;->u0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/calendar/web/CalendarWebViewActivity;


# direct methods
.method constructor <init>(Lcom/miui/calendar/web/CalendarWebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$k;->a:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$k;->a:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/miui/calendar/web/CalendarWebViewActivity;->l0(Lcom/miui/calendar/web/CalendarWebViewActivity;)Lcom/miui/calendar/web/CalendarWebView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$k;->a:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/miui/calendar/web/CalendarWebViewActivity;->l0(Lcom/miui/calendar/web/CalendarWebViewActivity;)Lcom/miui/calendar/web/CalendarWebView;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$k;->a:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/miui/calendar/web/CalendarWebViewActivity;->Z(Lcom/miui/calendar/web/CalendarWebViewActivity;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method
