.class public final synthetic Lk4/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk3/d$b;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk4/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/miui/calendar/account/mi/MiAccountSchema;)V
    .locals 1

    iget-object v0, p0, Lk4/b;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lk4/d;->a(Landroid/content/Context;Lcom/miui/calendar/account/mi/MiAccountSchema;)V

    return-void
.end method
