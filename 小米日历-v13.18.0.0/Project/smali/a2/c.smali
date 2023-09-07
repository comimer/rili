.class public final synthetic La2/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:La2/d;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(La2/d;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/c;->a:La2/d;

    iput-object p2, p0, La2/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, La2/c;->a:La2/d;

    iget-object v1, p0, La2/c;->b:Ljava/util/List;

    invoke-static {v0, v1}, La2/d;->a(La2/d;Ljava/util/List;)V

    return-void
.end method
