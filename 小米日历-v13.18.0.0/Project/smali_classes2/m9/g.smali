.class public final synthetic Lm9/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lm9/i;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lm9/i;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm9/g;->a:Lm9/i;

    iput p2, p0, Lm9/g;->b:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lm9/g;->a:Lm9/i;

    iget v1, p0, Lm9/g;->b:F

    invoke-static {v0, v1}, Lm9/i;->q(Lm9/i;F)V

    return-void
.end method
