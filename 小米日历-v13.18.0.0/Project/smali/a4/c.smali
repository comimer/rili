.class public final synthetic La4/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/huangli/HuangLiDetailActivity;

.field public final synthetic b:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/huangli/HuangLiDetailActivity;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/c;->a:Lcom/miui/calendar/huangli/HuangLiDetailActivity;

    iput-object p2, p0, La4/c;->b:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, La4/c;->a:Lcom/miui/calendar/huangli/HuangLiDetailActivity;

    iget-object v1, p0, La4/c;->b:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->Y(Lcom/miui/calendar/huangli/HuangLiDetailActivity;Landroid/widget/FrameLayout;)V

    return-void
.end method
