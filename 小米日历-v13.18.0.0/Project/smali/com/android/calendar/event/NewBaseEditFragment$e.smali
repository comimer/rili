.class Lcom/android/calendar/event/NewBaseEditFragment$e;
.super Ljava/lang/Object;
.source "NewBaseEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/NewBaseEditFragment;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/event/NewBaseEditFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/NewBaseEditFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment$e;->a:Lcom/android/calendar/event/NewBaseEditFragment;

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
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$e;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/16 v1, 0x2726

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment$e;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/calendar/event/NewBaseEditFragment;->N()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
