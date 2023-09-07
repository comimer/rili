.class Lcom/android/calendar/homepage/l0$a;
.super Ljava/lang/Object;
.source "EventsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/homepage/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/homepage/l0;


# direct methods
.method constructor <init>(Lcom/android/calendar/homepage/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/l0$a;->a:Lcom/android/calendar/homepage/l0;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$a;->a:Lcom/android/calendar/homepage/l0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->z(Lcom/android/calendar/homepage/l0;)Lcom/android/calendar/homepage/l0$l;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/android/calendar/homepage/l0;->p(Lcom/android/calendar/homepage/l0;Lcom/android/calendar/homepage/l0$l;)Lcom/android/calendar/homepage/l0$l;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$a;->a:Lcom/android/calendar/homepage/l0;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Lcom/android/calendar/homepage/l0;->B(Lcom/android/calendar/homepage/l0;Lcom/android/calendar/homepage/l0$l;)Lcom/android/calendar/homepage/l0$l;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$a;->a:Lcom/android/calendar/homepage/l0;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 19
    .line 20
    .line 21
    return-void
    .line 22
.end method
