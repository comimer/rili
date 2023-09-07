.class Lcom/android/calendar/event/k$b;
.super Ljava/lang/Object;
.source "EditEventStatsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/k;->c(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    const-string p1, "Cal:D:EditEventStatsHelper"

    .line 2
    .line 3
    const-string v0, "showDislikeDialog::onCancel()"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lt1/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "strvalue"

    .line 9
    .line 10
    const-string v0, "cancel"

    .line 11
    .line 12
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "edit_event_dislike"

    .line 17
    .line 18
    invoke-static {v0, p1}, Lcom/miui/calendar/util/g0;->f(Ljava/lang/String;[Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
    .line 22
.end method
