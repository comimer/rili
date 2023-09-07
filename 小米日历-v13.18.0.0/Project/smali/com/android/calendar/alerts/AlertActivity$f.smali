.class Lcom/android/calendar/alerts/AlertActivity$f;
.super Lcom/miui/calendar/util/c0;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/calendar/util/c0<",
        "Lcom/android/calendar/alerts/AlertActivity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/calendar/alerts/AlertActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/calendar/util/c0;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
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
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x3e8

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/miui/calendar/util/c0;->c()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string p1, "Cal:D:AlertActivity"

    .line 14
    .line 15
    const-string v0, "mHandler.handleMessage(): AlarmKlaxon.stop()"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lo1/a;->l()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/miui/calendar/util/c0;->c()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/android/calendar/alerts/AlertActivity;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/16 v0, 0x80

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
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
