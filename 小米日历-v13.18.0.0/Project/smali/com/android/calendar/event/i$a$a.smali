.class Lcom/android/calendar/event/i$a$a;
.super Ljava/lang/Object;
.source "EditEventAlarmHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/i$a;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/event/i$a;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/i$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/i$a$a;->a:Lcom/android/calendar/event/i$a;

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
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/i$a$a;->a:Lcom/android/calendar/event/i$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/event/i$a;->c:Lcom/android/calendar/event/i;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/calendar/event/i;->a(Lcom/android/calendar/event/i;)Lcom/android/calendar/event/i$c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/calendar/event/i$a$a;->a:Lcom/android/calendar/event/i$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/calendar/event/i$a;->c:Lcom/android/calendar/event/i;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/calendar/event/i;->a(Lcom/android/calendar/event/i;)Lcom/android/calendar/event/i$c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/android/calendar/event/i$c;->b()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
