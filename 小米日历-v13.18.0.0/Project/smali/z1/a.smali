.class public final synthetic Lz1/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/dragview/AccountSettingBottomView;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/dragview/AccountSettingBottomView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/a;->a:Lcom/android/calendar/dragview/AccountSettingBottomView;

    iput-object p2, p0, Lz1/a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lz1/a;->a:Lcom/android/calendar/dragview/AccountSettingBottomView;

    iget-object v1, p0, Lz1/a;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/calendar/dragview/AccountSettingBottomView;->g(Lcom/android/calendar/dragview/AccountSettingBottomView;Landroid/view/View;)V

    return-void
.end method
