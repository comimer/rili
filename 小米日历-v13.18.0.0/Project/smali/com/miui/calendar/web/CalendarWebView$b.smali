.class Lcom/miui/calendar/web/CalendarWebView$b;
.super Landroid/webkit/WebChromeClient;
.source "CalendarWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/web/CalendarWebView;->c(Landroid/app/Activity;Lcom/miui/calendar/web/CalendarWebView$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/calendar/web/CalendarWebView;


# direct methods
.method constructor <init>(Lcom/miui/calendar/web/CalendarWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/web/CalendarWebView$b;->a:Lcom/miui/calendar/web/CalendarWebView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

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
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/miui/calendar/web/CalendarWebView$b;->a:Lcom/miui/calendar/web/CalendarWebView;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/miui/calendar/web/CalendarWebView;->a(Lcom/miui/calendar/web/CalendarWebView;)Lcom/miui/calendar/web/CalendarWebView$c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/miui/calendar/web/CalendarWebView$b;->a:Lcom/miui/calendar/web/CalendarWebView;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/miui/calendar/web/CalendarWebView;->a(Lcom/miui/calendar/web/CalendarWebView;)Lcom/miui/calendar/web/CalendarWebView$c;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1, p2}, Lcom/miui/calendar/web/CalendarWebView$c;->h(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
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
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/miui/calendar/web/CalendarWebView$b;->a:Lcom/miui/calendar/web/CalendarWebView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/miui/calendar/web/CalendarWebView;->a(Lcom/miui/calendar/web/CalendarWebView;)Lcom/miui/calendar/web/CalendarWebView$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/miui/calendar/web/CalendarWebView$b;->a:Lcom/miui/calendar/web/CalendarWebView;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/miui/calendar/web/CalendarWebView;->a(Lcom/miui/calendar/web/CalendarWebView;)Lcom/miui/calendar/web/CalendarWebView$c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1, p2}, Lcom/miui/calendar/web/CalendarWebView$c;->b(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
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
.end method
