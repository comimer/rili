.class public final synthetic Ly1/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ly1/k;


# direct methods
.method public synthetic constructor <init>(Ly1/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/h;->a:Ly1/k;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ly1/h;->a:Ly1/k;

    invoke-static {v0, p1}, Ly1/k;->k(Ly1/k;Landroid/view/View;)V

    return-void
.end method
