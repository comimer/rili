.class public final synthetic Le4/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk3/d$b;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/miui/calendar/limit/a$a;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/miui/calendar/limit/a$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le4/d;->a:Landroid/content/Context;

    iput-object p2, p0, Le4/d;->b:Lcom/miui/calendar/limit/a$a;

    iput-object p3, p0, Le4/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/miui/calendar/account/mi/MiAccountSchema;)V
    .locals 3

    iget-object v0, p0, Le4/d;->a:Landroid/content/Context;

    iget-object v1, p0, Le4/d;->b:Lcom/miui/calendar/limit/a$a;

    iget-object v2, p0, Le4/d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/calendar/limit/a;->a(Landroid/content/Context;Lcom/miui/calendar/limit/a$a;Ljava/lang/String;Lcom/miui/calendar/account/mi/MiAccountSchema;)V

    return-void
.end method
