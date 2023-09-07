.class Lcom/miui/calendar/web/CalendarWebViewActivity$m;
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
    iput-object p1, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$m;->a:Lcom/miui/calendar/web/CalendarWebViewActivity;

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
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$m;->a:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/miui/calendar/web/CalendarWebViewActivity;->m0(Lcom/miui/calendar/web/CalendarWebViewActivity;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$m;->a:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Lcom/miui/calendar/web/CalendarWebViewActivity;->E0(Z)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/miui/calendar/web/CalendarWebViewActivity$m;->a:Lcom/miui/calendar/web/CalendarWebViewActivity;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/miui/calendar/web/CalendarWebViewActivity;->l0(Lcom/miui/calendar/web/CalendarWebViewActivity;)Lcom/miui/calendar/web/CalendarWebView;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Lcom/miui/calendar/web/CalendarWebViewActivity$m$a;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/miui/calendar/web/CalendarWebViewActivity$m$a;-><init>(Lcom/miui/calendar/web/CalendarWebViewActivity$m;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "javascript:getShareImage()"

    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 31
    .line 32
    .line 33
    return-void
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
