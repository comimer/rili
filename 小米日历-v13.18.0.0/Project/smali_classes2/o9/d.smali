.class public final synthetic Lo9/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lo9/f;


# direct methods
.method public synthetic constructor <init>(Lo9/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo9/d;->a:Lo9/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo9/d;->a:Lo9/f;

    invoke-static {v0}, Lo9/f;->c(Lo9/f;)V

    return-void
.end method
