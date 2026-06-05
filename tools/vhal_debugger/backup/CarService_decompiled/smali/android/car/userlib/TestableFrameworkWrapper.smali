.class public Landroid/car/userlib/TestableFrameworkWrapper;
.super Ljava/lang/Object;
.source "TestableFrameworkWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBootUserOverrideId(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    .line 30
    invoke-static {}, Landroid/sysprop/CarProperties;->boot_user_override_id()Ljava/util/Optional;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public userManagerGetMaxSupportedUsers()I
    .locals 1

    .line 37
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    return v0
.end method
