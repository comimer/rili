.class public final synthetic Lq3/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ls3/a;

.field public final synthetic b:Ls3/a$a;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ls3/a;Ls3/a$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/a;->a:Ls3/a;

    iput-object p2, p0, Lq3/a;->b:Ls3/a$a;

    iput p3, p0, Lq3/a;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lq3/a;->a:Ls3/a;

    iget-object v1, p0, Lq3/a;->b:Ls3/a$a;

    iget v2, p0, Lq3/a;->c:I

    invoke-static {v0, v1, v2}, Lcom/miui/calendar/card/CardAdapter;->a(Ls3/a;Ls3/a$a;I)V

    return-void
.end method
