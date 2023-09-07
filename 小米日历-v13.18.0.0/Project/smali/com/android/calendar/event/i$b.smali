.class Lcom/android/calendar/event/i$b;
.super Ljava/lang/Object;
.source "EditEventAlarmHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/i;->f(ZLcom/android/calendar/event/i$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/event/i;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/i$b;->a:Lcom/android/calendar/event/i;

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
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/calendar/event/i$b;->a:Lcom/android/calendar/event/i;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/calendar/event/i;->a(Lcom/android/calendar/event/i;)Lcom/android/calendar/event/i$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/calendar/event/i$b;->a:Lcom/android/calendar/event/i;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/calendar/event/i;->a(Lcom/android/calendar/event/i;)Lcom/android/calendar/event/i$c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/android/calendar/event/i$c;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method
