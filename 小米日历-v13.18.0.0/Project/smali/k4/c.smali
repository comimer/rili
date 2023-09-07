.class public final synthetic Lk4/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk3/d$b;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lk4/d$a;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lk4/d$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk4/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lk4/c;->b:Lk4/d$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/miui/calendar/account/mi/MiAccountSchema;)V
    .locals 2

    iget-object v0, p0, Lk4/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lk4/c;->b:Lk4/d$a;

    invoke-static {v0, v1, p1}, Lk4/d;->b(Landroid/content/Context;Lk4/d$a;Lcom/miui/calendar/account/mi/MiAccountSchema;)V

    return-void
.end method
