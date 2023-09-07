.class public final synthetic Lt3/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lt3/f;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lt3/f;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/d;->a:Lt3/f;

    iput p2, p0, Lt3/d;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lt3/d;->a:Lt3/f;

    iget v1, p0, Lt3/d;->b:I

    invoke-static {v0, v1, p1}, Lt3/f;->V(Lt3/f;ILandroid/view/View;)V

    return-void
.end method
