.class Lcom/android/calendar/homepage/AllInOneActivity$c$a;
.super Ljava/lang/Object;
.source "AllInOneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/homepage/AllInOneActivity$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/homepage/AllInOneActivity$c;


# direct methods
.method constructor <init>(Lcom/android/calendar/homepage/AllInOneActivity$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity$c$a;->a:Lcom/android/calendar/homepage/AllInOneActivity$c;

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
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$c$a;->a:Lcom/android/calendar/homepage/AllInOneActivity$c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/android/calendar/homepage/AllInOneActivity$c;->h:Z

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$c;->j:Lcom/android/calendar/homepage/AllInOneActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/calendar/homepage/AllInOneActivity;->D0(Lcom/android/calendar/homepage/AllInOneActivity;)Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->h:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    .line 15
    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
