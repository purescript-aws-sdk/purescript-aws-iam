
module AWS.IAM.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.IAM as IAM
import AWS.IAM.Types as IAMTypes


-- | <p>Adds a new client ID (also known as audience) to the list of client IDs already registered for the specified IAM OpenID Connect (OIDC) provider resource.</p> <p>This action is idempotent; it does not fail or return an error if you add an existing client ID to the provider.</p>
addClientIDToOpenIDConnectProvider :: forall eff. IAM.Service -> IAMTypes.AddClientIDToOpenIDConnectProviderRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
addClientIDToOpenIDConnectProvider (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addClientIDToOpenIDConnectProvider"


-- | <p>Adds the specified IAM role to the specified instance profile. An instance profile can contain only one role, and this limit cannot be increased.</p> <note> <p>The caller of this API must be granted the <code>PassRole</code> permission on the IAM role by a permission policy.</p> </note> <p>For more information about roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>. For more information about instance profiles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p>
addRoleToInstanceProfile :: forall eff. IAM.Service -> IAMTypes.AddRoleToInstanceProfileRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
addRoleToInstanceProfile (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addRoleToInstanceProfile"


-- | <p>Adds the specified user to the specified group.</p>
addUserToGroup :: forall eff. IAM.Service -> IAMTypes.AddUserToGroupRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
addUserToGroup (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addUserToGroup"


-- | <p>Attaches the specified managed policy to the specified IAM group.</p> <p>You use this API to attach a managed policy to a group. To embed an inline policy in a group, use <a>PutGroupPolicy</a>.</p> <p>For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
attachGroupPolicy :: forall eff. IAM.Service -> IAMTypes.AttachGroupPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
attachGroupPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "attachGroupPolicy"


-- | <p>Attaches the specified managed policy to the specified IAM role. When you attach a managed policy to a role, the managed policy becomes part of the role's permission (access) policy.</p> <note> <p>You cannot use a managed policy as the role's trust policy. The role's trust policy is created at the same time as the role, using <a>CreateRole</a>. You can update a role's trust policy using <a>UpdateAssumeRolePolicy</a>.</p> </note> <p>Use this API to attach a <i>managed</i> policy to a role. To embed an inline policy in a role, use <a>PutRolePolicy</a>. For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
attachRolePolicy :: forall eff. IAM.Service -> IAMTypes.AttachRolePolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
attachRolePolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "attachRolePolicy"


-- | <p>Attaches the specified managed policy to the specified user.</p> <p>You use this API to attach a <i>managed</i> policy to a user. To embed an inline policy in a user, use <a>PutUserPolicy</a>.</p> <p>For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
attachUserPolicy :: forall eff. IAM.Service -> IAMTypes.AttachUserPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
attachUserPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "attachUserPolicy"


-- | <p>Changes the password of the IAM user who is calling this action. The root account password is not affected by this action.</p> <p>To change the password for a different user, see <a>UpdateLoginProfile</a>. For more information about modifying passwords, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html">Managing Passwords</a> in the <i>IAM User Guide</i>.</p>
changePassword :: forall eff. IAM.Service -> IAMTypes.ChangePasswordRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
changePassword (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "changePassword"


-- | <p> Creates a new AWS secret access key and corresponding AWS access key ID for the specified user. The default status for new keys is <code>Active</code>.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p> <p> For information about limits on the number of keys you can create, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p> <important> <p>To ensure the security of your AWS account, the secret access key is accessible only during key and user creation. You must save the key (for example, in a text file) if you want to be able to access it again. If a secret key is lost, you can delete the access keys for the associated user and then create new keys.</p> </important>
createAccessKey :: forall eff. IAM.Service -> IAMTypes.CreateAccessKeyRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.CreateAccessKeyResponse
createAccessKey (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createAccessKey"


-- | <p>Creates an alias for your AWS account. For information about using an AWS account alias, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html">Using an Alias for Your AWS Account ID</a> in the <i>IAM User Guide</i>.</p>
createAccountAlias :: forall eff. IAM.Service -> IAMTypes.CreateAccountAliasRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
createAccountAlias (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createAccountAlias"


-- | <p>Creates a new group.</p> <p> For information about the number of groups you can create, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>
createGroup :: forall eff. IAM.Service -> IAMTypes.CreateGroupRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.CreateGroupResponse
createGroup (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createGroup"


-- | <p> Creates a new instance profile. For information about instance profiles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p> <p> For information about the number of instance profiles you can create, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>
createInstanceProfile :: forall eff. IAM.Service -> IAMTypes.CreateInstanceProfileRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.CreateInstanceProfileResponse
createInstanceProfile (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createInstanceProfile"


-- | <p> Creates a password for the specified user, giving the user the ability to access AWS services through the AWS Management Console. For more information about managing passwords, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html">Managing Passwords</a> in the <i>IAM User Guide</i>.</p>
createLoginProfile :: forall eff. IAM.Service -> IAMTypes.CreateLoginProfileRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.CreateLoginProfileResponse
createLoginProfile (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createLoginProfile"


-- | <p>Creates an IAM entity to describe an identity provider (IdP) that supports <a href="http://openid.net/connect/">OpenID Connect (OIDC)</a>.</p> <p>The OIDC provider that you create with this operation can be used as a principal in a role's trust policy to establish a trust relationship between AWS and the OIDC provider.</p> <p>When you create the IAM OIDC provider, you specify the URL of the OIDC identity provider (IdP) to trust, a list of client IDs (also known as audiences) that identify the application or applications that are allowed to authenticate using the OIDC provider, and a list of thumbprints of the server certificate(s) that the IdP uses. You get all of this information from the OIDC IdP that you want to use for access to AWS.</p> <note> <p>Because trust for the OIDC provider is ultimately derived from the IAM provider that this action creates, it is a best practice to limit access to the <a>CreateOpenIDConnectProvider</a> action to highly-privileged users.</p> </note>
createOpenIDConnectProvider :: forall eff. IAM.Service -> IAMTypes.CreateOpenIDConnectProviderRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.CreateOpenIDConnectProviderResponse
createOpenIDConnectProvider (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createOpenIDConnectProvider"


-- | <p>Creates a new managed policy for your AWS account.</p> <p>This operation creates a policy version with a version identifier of <code>v1</code> and sets v1 as the policy's default version. For more information about policy versions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p> <p>For more information about managed policies in general, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
createPolicy :: forall eff. IAM.Service -> IAMTypes.CreatePolicyRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.CreatePolicyResponse
createPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createPolicy"


-- | <p>Creates a new version of the specified managed policy. To update a managed policy, you create a new policy version. A managed policy can have up to five versions. If the policy has five versions, you must delete an existing version using <a>DeletePolicyVersion</a> before you create a new version.</p> <p>Optionally, you can set the new version as the policy's default version. The default version is the version that is in effect for the IAM users, groups, and roles to which the policy is attached.</p> <p>For more information about managed policy versions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>
createPolicyVersion :: forall eff. IAM.Service -> IAMTypes.CreatePolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.CreatePolicyVersionResponse
createPolicyVersion (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createPolicyVersion"


-- | <p>Creates a new role for your AWS account. For more information about roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>. For information about limitations on role names and the number of roles you can create, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>
createRole :: forall eff. IAM.Service -> IAMTypes.CreateRoleRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.CreateRoleResponse
createRole (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createRole"


-- | <p>Creates an IAM resource that describes an identity provider (IdP) that supports SAML 2.0.</p> <p>The SAML provider resource that you create with this operation can be used as a principal in an IAM role's trust policy to enable federated users who sign-in using the SAML IdP to assume the role. You can create an IAM role that supports Web-based single sign-on (SSO) to the AWS Management Console or one that supports API access to AWS.</p> <p>When you create the SAML provider resource, you upload an a SAML metadata document that you get from your IdP and that includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that the IdP sends. You must generate the metadata document using the identity management software that is used as your organization's IdP.</p> <note> <p> This operation requires <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note> <p> For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-saml.html">Enabling SAML 2.0 Federated Users to Access the AWS Management Console</a> and <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About SAML 2.0-based Federation</a> in the <i>IAM User Guide</i>.</p>
createSAMLProvider :: forall eff. IAM.Service -> IAMTypes.CreateSAMLProviderRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.CreateSAMLProviderResponse
createSAMLProvider (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createSAMLProvider"


-- | <p>Creates an IAM role that is linked to a specific AWS service. The service controls the attached policies and when the role can be deleted. This helps ensure that the service is not broken by an unexpectedly changed or deleted role, which could put your AWS resources into an unknown state. Allowing the service to control the role helps improve service stability and proper cleanup when a service and its role are no longer needed.</p> <p>The name of the role is autogenerated by combining the string that you specify for the <code>AWSServiceName</code> parameter with the string that you specify for the <code>CustomSuffix</code> parameter. The resulting name must be unique in your account or the request fails.</p> <p>To attach a policy to this service-linked role, you must make the request using the AWS service that depends on this role.</p>
createServiceLinkedRole :: forall eff. IAM.Service -> IAMTypes.CreateServiceLinkedRoleRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.CreateServiceLinkedRoleResponse
createServiceLinkedRole (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createServiceLinkedRole"


-- | <p>Generates a set of credentials consisting of a user name and password that can be used to access the service specified in the request. These credentials are generated by IAM, and can be used only for the specified service. </p> <p>You can have a maximum of two sets of service-specific credentials for each supported service per user.</p> <p>The only supported service at this time is AWS CodeCommit.</p> <p>You can reset the password to a new service-generated value by calling <a>ResetServiceSpecificCredential</a>.</p> <p>For more information about service-specific credentials, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_ssh-keys.html">Using IAM with AWS CodeCommit: Git Credentials, SSH Keys, and AWS Access Keys</a> in the <i>IAM User Guide</i>.</p>
createServiceSpecificCredential :: forall eff. IAM.Service -> IAMTypes.CreateServiceSpecificCredentialRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.CreateServiceSpecificCredentialResponse
createServiceSpecificCredential (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createServiceSpecificCredential"


-- | <p>Creates a new IAM user for your AWS account.</p> <p> For information about limitations on the number of IAM users you can create, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>
createUser :: forall eff. IAM.Service -> IAMTypes.CreateUserRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.CreateUserResponse
createUser (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createUser"


-- | <p>Creates a new virtual MFA device for the AWS account. After creating the virtual MFA, use <a>EnableMFADevice</a> to attach the MFA device to an IAM user. For more information about creating and working with virtual MFA devices, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html">Using a Virtual MFA Device</a> in the <i>IAM User Guide</i>.</p> <p>For information about limits on the number of MFA devices you can create, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on Entities</a> in the <i>IAM User Guide</i>.</p> <important> <p>The seed information contained in the QR code and the Base32 string should be treated like any other secret access information, such as your AWS access keys or your passwords. After you provision your virtual device, you should ensure that the information is destroyed following secure procedures.</p> </important>
createVirtualMFADevice :: forall eff. IAM.Service -> IAMTypes.CreateVirtualMFADeviceRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.CreateVirtualMFADeviceResponse
createVirtualMFADevice (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createVirtualMFADevice"


-- | <p>Deactivates the specified MFA device and removes it from association with the user name for which it was originally enabled.</p> <p>For more information about creating and working with virtual MFA devices, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html">Using a Virtual MFA Device</a> in the <i>IAM User Guide</i>.</p>
deactivateMFADevice :: forall eff. IAM.Service -> IAMTypes.DeactivateMFADeviceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deactivateMFADevice (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deactivateMFADevice"


-- | <p>Deletes the access key pair associated with the specified IAM user.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p>
deleteAccessKey :: forall eff. IAM.Service -> IAMTypes.DeleteAccessKeyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteAccessKey (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteAccessKey"


-- | <p> Deletes the specified AWS account alias. For information about using an AWS account alias, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html">Using an Alias for Your AWS Account ID</a> in the <i>IAM User Guide</i>.</p>
deleteAccountAlias :: forall eff. IAM.Service -> IAMTypes.DeleteAccountAliasRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteAccountAlias (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteAccountAlias"


-- | <p>Deletes the password policy for the AWS account. There are no parameters.</p>
deleteAccountPasswordPolicy :: forall eff. IAM.Service ->  Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteAccountPasswordPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method (Types.NoInput unit) where
    method = AWS.MethodName "deleteAccountPasswordPolicy"


-- | <p>Deletes the specified IAM group. The group must not contain any users or have any attached policies.</p>
deleteGroup :: forall eff. IAM.Service -> IAMTypes.DeleteGroupRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteGroup (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteGroup"


-- | <p>Deletes the specified inline policy that is embedded in the specified IAM group.</p> <p>A group can also have managed policies attached to it. To detach a managed policy from a group, use <a>DetachGroupPolicy</a>. For more information about policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
deleteGroupPolicy :: forall eff. IAM.Service -> IAMTypes.DeleteGroupPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteGroupPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteGroupPolicy"


-- | <p>Deletes the specified instance profile. The instance profile must not have an associated role.</p> <important> <p>Make sure you do not have any Amazon EC2 instances running with the instance profile you are about to delete. Deleting a role or instance profile that is associated with a running instance will break any applications running on the instance.</p> </important> <p>For more information about instance profiles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p>
deleteInstanceProfile :: forall eff. IAM.Service -> IAMTypes.DeleteInstanceProfileRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteInstanceProfile (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteInstanceProfile"


-- | <p>Deletes the password for the specified IAM user, which terminates the user's ability to access AWS services through the AWS Management Console.</p> <important> <p> Deleting a user's password does not prevent a user from accessing AWS through the command line interface or the API. To prevent all user access you must also either make any access keys inactive or delete them. For more information about making keys inactive or deleting them, see <a>UpdateAccessKey</a> and <a>DeleteAccessKey</a>. </p> </important>
deleteLoginProfile :: forall eff. IAM.Service -> IAMTypes.DeleteLoginProfileRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteLoginProfile (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteLoginProfile"


-- | <p>Deletes an OpenID Connect identity provider (IdP) resource object in IAM.</p> <p>Deleting an IAM OIDC provider resource does not update any roles that reference the provider as a principal in their trust policies. Any attempt to assume a role that references a deleted provider fails.</p> <p>This action is idempotent; it does not fail or return an error if you call the action for a provider that does not exist.</p>
deleteOpenIDConnectProvider :: forall eff. IAM.Service -> IAMTypes.DeleteOpenIDConnectProviderRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteOpenIDConnectProvider (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteOpenIDConnectProvider"


-- | <p>Deletes the specified managed policy.</p> <p>Before you can delete a managed policy, you must first detach the policy from all users, groups, and roles that it is attached to, and you must delete all of the policy's versions. The following steps describe the process for deleting a managed policy:</p> <ul> <li> <p>Detach the policy from all users, groups, and roles that the policy is attached to, using the <a>DetachUserPolicy</a>, <a>DetachGroupPolicy</a>, or <a>DetachRolePolicy</a> APIs. To list all the users, groups, and roles that a policy is attached to, use <a>ListEntitiesForPolicy</a>.</p> </li> <li> <p>Delete all versions of the policy using <a>DeletePolicyVersion</a>. To list the policy's versions, use <a>ListPolicyVersions</a>. You cannot use <a>DeletePolicyVersion</a> to delete the version that is marked as the default version. You delete the policy's default version in the next step of the process.</p> </li> <li> <p>Delete the policy (this automatically deletes the policy's default version) using this API.</p> </li> </ul> <p>For information about managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
deletePolicy :: forall eff. IAM.Service -> IAMTypes.DeletePolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deletePolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deletePolicy"


-- | <p>Deletes the specified version from the specified managed policy.</p> <p>You cannot delete the default version from a policy using this API. To delete the default version from a policy, use <a>DeletePolicy</a>. To find out which version of a policy is marked as the default version, use <a>ListPolicyVersions</a>.</p> <p>For information about versions for managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>
deletePolicyVersion :: forall eff. IAM.Service -> IAMTypes.DeletePolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deletePolicyVersion (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deletePolicyVersion"


-- | <p>Deletes the specified role. The role must not have any policies attached. For more information about roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>.</p> <important> <p>Make sure you do not have any Amazon EC2 instances running with the role you are about to delete. Deleting a role or instance profile that is associated with a running instance will break any applications running on the instance.</p> </important>
deleteRole :: forall eff. IAM.Service -> IAMTypes.DeleteRoleRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteRole (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteRole"


-- | <p>Deletes the specified inline policy that is embedded in the specified IAM role.</p> <p>A role can also have managed policies attached to it. To detach a managed policy from a role, use <a>DetachRolePolicy</a>. For more information about policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
deleteRolePolicy :: forall eff. IAM.Service -> IAMTypes.DeleteRolePolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteRolePolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteRolePolicy"


-- | <p>Deletes a SAML provider resource in IAM.</p> <p>Deleting the provider resource from IAM does not update any roles that reference the SAML provider resource's ARN as a principal in their trust policies. Any attempt to assume a role that references a non-existent provider resource ARN fails.</p> <note> <p> This operation requires <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note>
deleteSAMLProvider :: forall eff. IAM.Service -> IAMTypes.DeleteSAMLProviderRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteSAMLProvider (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteSAMLProvider"


-- | <p>Deletes the specified SSH public key.</p> <p>The SSH public key deleted by this action is used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>
deleteSSHPublicKey :: forall eff. IAM.Service -> IAMTypes.DeleteSSHPublicKeyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteSSHPublicKey (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteSSHPublicKey"


-- | <p>Deletes the specified server certificate.</p> <p>For more information about working with server certificates, including a list of AWS services that can use the server certificates that you manage with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>.</p> <important> <p> If you are using a server certificate with Elastic Load Balancing, deleting the certificate could have implications for your application. If Elastic Load Balancing doesn't detect the deletion of bound certificates, it may continue to use the certificates. This could cause Elastic Load Balancing to stop accepting traffic. We recommend that you remove the reference to the certificate from Elastic Load Balancing before using this command to delete the certificate. For more information, go to <a href="http://docs.aws.amazon.com/ElasticLoadBalancing/latest/APIReference/API_DeleteLoadBalancerListeners.html">DeleteLoadBalancerListeners</a> in the <i>Elastic Load Balancing API Reference</i>.</p> </important>
deleteServerCertificate :: forall eff. IAM.Service -> IAMTypes.DeleteServerCertificateRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteServerCertificate (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteServerCertificate"


-- | <p>Submits a service-linked role deletion request and returns a <code>DeletionTaskId</code>, which you can use to check the status of the deletion. Before you call this operation, confirm that the role has no active sessions and that any resources used by the role in the linked service are deleted. If you call this operation more than once for the same service-linked role and an earlier deletion task is not complete, then the <code>DeletionTaskId</code> of the earlier request is returned.</p> <p>If you submit a deletion request for a service-linked role whose linked service is still accessing a resource, then the deletion task fails. If it fails, the <a>GetServiceLinkedRoleDeletionStatus</a> API operation returns the reason for the failure, including the resources that must be deleted. To delete the service-linked role, you must first remove those resources from the linked service and then submit the deletion request again. Resources are specific to the service that is linked to the role. For more information about removing resources from a service, see the <a href="http://docs.aws.amazon.com/">AWS documentation</a> for your service.</p> <p>For more information about service-linked roles, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role">Roles Terms and Concepts: AWS Service-Linked Role</a> in the <i>IAM User Guide</i>.</p>
deleteServiceLinkedRole :: forall eff. IAM.Service -> IAMTypes.DeleteServiceLinkedRoleRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.DeleteServiceLinkedRoleResponse
deleteServiceLinkedRole (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteServiceLinkedRole"


-- | <p>Deletes the specified service-specific credential.</p>
deleteServiceSpecificCredential :: forall eff. IAM.Service -> IAMTypes.DeleteServiceSpecificCredentialRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteServiceSpecificCredential (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteServiceSpecificCredential"


-- | <p>Deletes a signing certificate associated with the specified IAM user.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated IAM users.</p>
deleteSigningCertificate :: forall eff. IAM.Service -> IAMTypes.DeleteSigningCertificateRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteSigningCertificate (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteSigningCertificate"


-- | <p>Deletes the specified IAM user. The user must not belong to any groups or have any access keys, signing certificates, or attached policies.</p>
deleteUser :: forall eff. IAM.Service -> IAMTypes.DeleteUserRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteUser (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteUser"


-- | <p>Deletes the specified inline policy that is embedded in the specified IAM user.</p> <p>A user can also have managed policies attached to it. To detach a managed policy from a user, use <a>DetachUserPolicy</a>. For more information about policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
deleteUserPolicy :: forall eff. IAM.Service -> IAMTypes.DeleteUserPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteUserPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteUserPolicy"


-- | <p>Deletes a virtual MFA device.</p> <note> <p> You must deactivate a user's virtual MFA device before you can delete it. For information about deactivating MFA devices, see <a>DeactivateMFADevice</a>. </p> </note>
deleteVirtualMFADevice :: forall eff. IAM.Service -> IAMTypes.DeleteVirtualMFADeviceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteVirtualMFADevice (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteVirtualMFADevice"


-- | <p>Removes the specified managed policy from the specified IAM group.</p> <p>A group can also have inline policies embedded with it. To delete an inline policy, use the <a>DeleteGroupPolicy</a> API. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
detachGroupPolicy :: forall eff. IAM.Service -> IAMTypes.DetachGroupPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
detachGroupPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "detachGroupPolicy"


-- | <p>Removes the specified managed policy from the specified role.</p> <p>A role can also have inline policies embedded with it. To delete an inline policy, use the <a>DeleteRolePolicy</a> API. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
detachRolePolicy :: forall eff. IAM.Service -> IAMTypes.DetachRolePolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
detachRolePolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "detachRolePolicy"


-- | <p>Removes the specified managed policy from the specified user.</p> <p>A user can also have inline policies embedded with it. To delete an inline policy, use the <a>DeleteUserPolicy</a> API. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
detachUserPolicy :: forall eff. IAM.Service -> IAMTypes.DetachUserPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
detachUserPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "detachUserPolicy"


-- | <p>Enables the specified MFA device and associates it with the specified IAM user. When enabled, the MFA device is required for every subsequent login by the IAM user associated with the device.</p>
enableMFADevice :: forall eff. IAM.Service -> IAMTypes.EnableMFADeviceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
enableMFADevice (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "enableMFADevice"


-- | <p> Generates a credential report for the AWS account. For more information about the credential report, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting Credential Reports</a> in the <i>IAM User Guide</i>.</p>
generateCredentialReport :: forall eff. IAM.Service ->  Aff (exception :: EXCEPTION | eff) IAMTypes.GenerateCredentialReportResponse
generateCredentialReport (IAM.Service serviceImpl) = AWS.request serviceImpl method (Types.NoInput unit) where
    method = AWS.MethodName "generateCredentialReport"


-- | <p>Retrieves information about when the specified access key was last used. The information includes the date and time of last use, along with the AWS service and region that were specified in the last request made with that key.</p>
getAccessKeyLastUsed :: forall eff. IAM.Service -> IAMTypes.GetAccessKeyLastUsedRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.GetAccessKeyLastUsedResponse
getAccessKeyLastUsed (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getAccessKeyLastUsed"


-- | <p>Retrieves information about all IAM users, groups, roles, and policies in your AWS account, including their relationships to one another. Use this API to obtain a snapshot of the configuration of IAM permissions (users, groups, roles, and policies) in your account.</p> <p>You can optionally filter the results using the <code>Filter</code> parameter. You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
getAccountAuthorizationDetails :: forall eff. IAM.Service -> IAMTypes.GetAccountAuthorizationDetailsRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.GetAccountAuthorizationDetailsResponse
getAccountAuthorizationDetails (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getAccountAuthorizationDetails"


-- | <p>Retrieves the password policy for the AWS account. For more information about using a password policy, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html">Managing an IAM Password Policy</a>.</p>
getAccountPasswordPolicy :: forall eff. IAM.Service ->  Aff (exception :: EXCEPTION | eff) IAMTypes.GetAccountPasswordPolicyResponse
getAccountPasswordPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method (Types.NoInput unit) where
    method = AWS.MethodName "getAccountPasswordPolicy"


-- | <p>Retrieves information about IAM entity usage and IAM quotas in the AWS account.</p> <p> For information about limitations on IAM entities, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>
getAccountSummary :: forall eff. IAM.Service ->  Aff (exception :: EXCEPTION | eff) IAMTypes.GetAccountSummaryResponse
getAccountSummary (IAM.Service serviceImpl) = AWS.request serviceImpl method (Types.NoInput unit) where
    method = AWS.MethodName "getAccountSummary"


-- | <p>Gets a list of all of the context keys referenced in the input policies. The policies are supplied as a list of one or more strings. To get the context keys from policies associated with an IAM user, group, or role, use <a>GetContextKeysForPrincipalPolicy</a>.</p> <p>Context keys are variables maintained by AWS and its services that provide details about the context of an API query request, and can be evaluated by testing against a value specified in an IAM policy. Use GetContextKeysForCustomPolicy to understand what key names and values you must supply when you call <a>SimulateCustomPolicy</a>. Note that all parameters are shown in unencoded form here for clarity, but must be URL encoded to be included as a part of a real HTML request.</p>
getContextKeysForCustomPolicy :: forall eff. IAM.Service -> IAMTypes.GetContextKeysForCustomPolicyRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.GetContextKeysForPolicyResponse
getContextKeysForCustomPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getContextKeysForCustomPolicy"


-- | <p>Gets a list of all of the context keys referenced in all of the IAM policies attached to the specified IAM entity. The entity can be an IAM user, group, or role. If you specify a user, then the request also includes all of the policies attached to groups that the user is a member of.</p> <p>You can optionally include a list of one or more additional policies, specified as strings. If you want to include <i>only</i> a list of policies by string, use <a>GetContextKeysForCustomPolicy</a> instead.</p> <p> <b>Note:</b> This API discloses information about the permissions granted to other users. If you do not want users to see other user's permissions, then consider allowing them to use <a>GetContextKeysForCustomPolicy</a> instead.</p> <p>Context keys are variables maintained by AWS and its services that provide details about the context of an API query request, and can be evaluated by testing against a value in an IAM policy. Use <a>GetContextKeysForPrincipalPolicy</a> to understand what key names and values you must supply when you call <a>SimulatePrincipalPolicy</a>.</p>
getContextKeysForPrincipalPolicy :: forall eff. IAM.Service -> IAMTypes.GetContextKeysForPrincipalPolicyRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.GetContextKeysForPolicyResponse
getContextKeysForPrincipalPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getContextKeysForPrincipalPolicy"


-- | <p> Retrieves a credential report for the AWS account. For more information about the credential report, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting Credential Reports</a> in the <i>IAM User Guide</i>.</p>
getCredentialReport :: forall eff. IAM.Service ->  Aff (exception :: EXCEPTION | eff) IAMTypes.GetCredentialReportResponse
getCredentialReport (IAM.Service serviceImpl) = AWS.request serviceImpl method (Types.NoInput unit) where
    method = AWS.MethodName "getCredentialReport"


-- | <p> Returns a list of IAM users that are in the specified IAM group. You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
getGroup :: forall eff. IAM.Service -> IAMTypes.GetGroupRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.GetGroupResponse
getGroup (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getGroup"


-- | <p>Retrieves the specified inline policy document that is embedded in the specified IAM group.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>An IAM group can also have managed policies attached to it. To retrieve a managed policy document that is attached to a group, use <a>GetPolicy</a> to determine the policy's default version, then use <a>GetPolicyVersion</a> to retrieve the policy document.</p> <p>For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
getGroupPolicy :: forall eff. IAM.Service -> IAMTypes.GetGroupPolicyRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.GetGroupPolicyResponse
getGroupPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getGroupPolicy"


-- | <p> Retrieves information about the specified instance profile, including the instance profile's path, GUID, ARN, and role. For more information about instance profiles, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a> in the <i>IAM User Guide</i>.</p>
getInstanceProfile :: forall eff. IAM.Service -> IAMTypes.GetInstanceProfileRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.GetInstanceProfileResponse
getInstanceProfile (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getInstanceProfile"


-- | <p>Retrieves the user name and password-creation date for the specified IAM user. If the user has not been assigned a password, the action returns a 404 (<code>NoSuchEntity</code>) error.</p>
getLoginProfile :: forall eff. IAM.Service -> IAMTypes.GetLoginProfileRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.GetLoginProfileResponse
getLoginProfile (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getLoginProfile"


-- | <p>Returns information about the specified OpenID Connect (OIDC) provider resource object in IAM.</p>
getOpenIDConnectProvider :: forall eff. IAM.Service -> IAMTypes.GetOpenIDConnectProviderRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.GetOpenIDConnectProviderResponse
getOpenIDConnectProvider (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getOpenIDConnectProvider"


-- | <p>Retrieves information about the specified managed policy, including the policy's default version and the total number of IAM users, groups, and roles to which the policy is attached. To retrieve the list of the specific users, groups, and roles that the policy is attached to, use the <a>ListEntitiesForPolicy</a> API. This API returns metadata about the policy. To retrieve the actual policy document for a specific version of the policy, use <a>GetPolicyVersion</a>.</p> <p>This API retrieves information about managed policies. To retrieve information about an inline policy that is embedded with an IAM user, group, or role, use the <a>GetUserPolicy</a>, <a>GetGroupPolicy</a>, or <a>GetRolePolicy</a> API.</p> <p>For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
getPolicy :: forall eff. IAM.Service -> IAMTypes.GetPolicyRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.GetPolicyResponse
getPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getPolicy"


-- | <p>Retrieves information about the specified version of the specified managed policy, including the policy document.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>To list the available versions for a policy, use <a>ListPolicyVersions</a>.</p> <p>This API retrieves information about managed policies. To retrieve information about an inline policy that is embedded in a user, group, or role, use the <a>GetUserPolicy</a>, <a>GetGroupPolicy</a>, or <a>GetRolePolicy</a> API.</p> <p>For more information about the types of policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For more information about managed policy versions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>
getPolicyVersion :: forall eff. IAM.Service -> IAMTypes.GetPolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.GetPolicyVersionResponse
getPolicyVersion (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getPolicyVersion"


-- | <p>Retrieves information about the specified role, including the role's path, GUID, ARN, and the role's trust policy that grants permission to assume the role. For more information about roles, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note>
getRole :: forall eff. IAM.Service -> IAMTypes.GetRoleRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.GetRoleResponse
getRole (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getRole"


-- | <p>Retrieves the specified inline policy document that is embedded with the specified IAM role.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>An IAM role can also have managed policies attached to it. To retrieve a managed policy document that is attached to a role, use <a>GetPolicy</a> to determine the policy's default version, then use <a>GetPolicyVersion</a> to retrieve the policy document.</p> <p>For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For more information about roles, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html">Using Roles to Delegate Permissions and Federate Identities</a>.</p>
getRolePolicy :: forall eff. IAM.Service -> IAMTypes.GetRolePolicyRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.GetRolePolicyResponse
getRolePolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getRolePolicy"


-- | <p>Returns the SAML provider metadocument that was uploaded when the IAM SAML provider resource object was created or updated.</p> <note> <p>This operation requires <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note>
getSAMLProvider :: forall eff. IAM.Service -> IAMTypes.GetSAMLProviderRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.GetSAMLProviderResponse
getSAMLProvider (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getSAMLProvider"


-- | <p>Retrieves the specified SSH public key, including metadata about the key.</p> <p>The SSH public key retrieved by this action is used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>
getSSHPublicKey :: forall eff. IAM.Service -> IAMTypes.GetSSHPublicKeyRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.GetSSHPublicKeyResponse
getSSHPublicKey (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getSSHPublicKey"


-- | <p>Retrieves information about the specified server certificate stored in IAM.</p> <p>For more information about working with server certificates, including a list of AWS services that can use the server certificates that you manage with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>.</p>
getServerCertificate :: forall eff. IAM.Service -> IAMTypes.GetServerCertificateRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.GetServerCertificateResponse
getServerCertificate (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getServerCertificate"


-- | <p>Retrieves the status of your service-linked role deletion. After you use the <a>DeleteServiceLinkedRole</a> API operation to submit a service-linked role for deletion, you can use the <code>DeletionTaskId</code> parameter in <code>GetServiceLinkedRoleDeletionStatus</code> to check the status of the deletion. If the deletion fails, this operation returns the reason that it failed.</p>
getServiceLinkedRoleDeletionStatus :: forall eff. IAM.Service -> IAMTypes.GetServiceLinkedRoleDeletionStatusRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.GetServiceLinkedRoleDeletionStatusResponse
getServiceLinkedRoleDeletionStatus (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getServiceLinkedRoleDeletionStatus"


-- | <p>Retrieves information about the specified IAM user, including the user's creation date, path, unique ID, and ARN.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID used to sign the request to this API.</p>
getUser :: forall eff. IAM.Service -> IAMTypes.GetUserRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.GetUserResponse
getUser (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getUser"


-- | <p>Retrieves the specified inline policy document that is embedded in the specified IAM user.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>An IAM user can also have managed policies attached to it. To retrieve a managed policy document that is attached to a user, use <a>GetPolicy</a> to determine the policy's default version, then use <a>GetPolicyVersion</a> to retrieve the policy document.</p> <p>For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
getUserPolicy :: forall eff. IAM.Service -> IAMTypes.GetUserPolicyRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.GetUserPolicyResponse
getUserPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getUserPolicy"


-- | <p>Returns information about the access key IDs associated with the specified IAM user. If there are none, the action returns an empty list.</p> <p>Although each user is limited to a small number of keys, you can still paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>If the <code>UserName</code> field is not specified, the UserName is determined implicitly based on the AWS access key ID used to sign the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p> <note> <p>To ensure the security of your AWS account, the secret access key is accessible only during key and user creation.</p> </note>
listAccessKeys :: forall eff. IAM.Service -> IAMTypes.ListAccessKeysRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListAccessKeysResponse
listAccessKeys (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listAccessKeys"


-- | <p>Lists the account alias associated with the AWS account (Note: you can have only one). For information about using an AWS account alias, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html">Using an Alias for Your AWS Account ID</a> in the <i>IAM User Guide</i>.</p>
listAccountAliases :: forall eff. IAM.Service -> IAMTypes.ListAccountAliasesRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListAccountAliasesResponse
listAccountAliases (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listAccountAliases"


-- | <p>Lists all managed policies that are attached to the specified IAM group.</p> <p>An IAM group can also have inline policies embedded with it. To list the inline policies for a group, use the <a>ListGroupPolicies</a> API. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. You can use the <code>PathPrefix</code> parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the action returns an empty list.</p>
listAttachedGroupPolicies :: forall eff. IAM.Service -> IAMTypes.ListAttachedGroupPoliciesRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListAttachedGroupPoliciesResponse
listAttachedGroupPolicies (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listAttachedGroupPolicies"


-- | <p>Lists all managed policies that are attached to the specified IAM role.</p> <p>An IAM role can also have inline policies embedded with it. To list the inline policies for a role, use the <a>ListRolePolicies</a> API. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. You can use the <code>PathPrefix</code> parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified role (or none that match the specified path prefix), the action returns an empty list.</p>
listAttachedRolePolicies :: forall eff. IAM.Service -> IAMTypes.ListAttachedRolePoliciesRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListAttachedRolePoliciesResponse
listAttachedRolePolicies (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listAttachedRolePolicies"


-- | <p>Lists all managed policies that are attached to the specified IAM user.</p> <p>An IAM user can also have inline policies embedded with it. To list the inline policies for a user, use the <a>ListUserPolicies</a> API. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. You can use the <code>PathPrefix</code> parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the action returns an empty list.</p>
listAttachedUserPolicies :: forall eff. IAM.Service -> IAMTypes.ListAttachedUserPoliciesRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListAttachedUserPoliciesResponse
listAttachedUserPolicies (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listAttachedUserPolicies"


-- | <p>Lists all IAM users, groups, and roles that the specified managed policy is attached to.</p> <p>You can use the optional <code>EntityFilter</code> parameter to limit the results to a particular type of entity (users, groups, or roles). For example, to list only the roles that are attached to the specified policy, set <code>EntityFilter</code> to <code>Role</code>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listEntitiesForPolicy :: forall eff. IAM.Service -> IAMTypes.ListEntitiesForPolicyRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListEntitiesForPolicyResponse
listEntitiesForPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listEntitiesForPolicy"


-- | <p>Lists the names of the inline policies that are embedded in the specified IAM group.</p> <p>An IAM group can also have managed policies attached to it. To list the managed policies that are attached to a group, use <a>ListAttachedGroupPolicies</a>. For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. If there are no inline policies embedded with the specified group, the action returns an empty list.</p>
listGroupPolicies :: forall eff. IAM.Service -> IAMTypes.ListGroupPoliciesRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListGroupPoliciesResponse
listGroupPolicies (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listGroupPolicies"


-- | <p>Lists the IAM groups that have the specified path prefix.</p> <p> You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listGroups :: forall eff. IAM.Service -> IAMTypes.ListGroupsRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListGroupsResponse
listGroups (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listGroups"


-- | <p>Lists the IAM groups that the specified IAM user belongs to.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listGroupsForUser :: forall eff. IAM.Service -> IAMTypes.ListGroupsForUserRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListGroupsForUserResponse
listGroupsForUser (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listGroupsForUser"


-- | <p>Lists the instance profiles that have the specified path prefix. If there are none, the action returns an empty list. For more information about instance profiles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listInstanceProfiles :: forall eff. IAM.Service -> IAMTypes.ListInstanceProfilesRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListInstanceProfilesResponse
listInstanceProfiles (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listInstanceProfiles"


-- | <p>Lists the instance profiles that have the specified associated IAM role. If there are none, the action returns an empty list. For more information about instance profiles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listInstanceProfilesForRole :: forall eff. IAM.Service -> IAMTypes.ListInstanceProfilesForRoleRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListInstanceProfilesForRoleResponse
listInstanceProfilesForRole (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listInstanceProfilesForRole"


-- | <p>Lists the MFA devices for an IAM user. If the request includes a IAM user name, then this action lists all the MFA devices associated with the specified user. If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request for this API.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listMFADevices :: forall eff. IAM.Service -> IAMTypes.ListMFADevicesRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListMFADevicesResponse
listMFADevices (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listMFADevices"


-- | <p>Lists information about the IAM OpenID Connect (OIDC) provider resource objects defined in the AWS account.</p>
listOpenIDConnectProviders :: forall eff. IAM.Service -> IAMTypes.ListOpenIDConnectProvidersRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListOpenIDConnectProvidersResponse
listOpenIDConnectProviders (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listOpenIDConnectProviders"


-- | <p>Lists all the managed policies that are available in your AWS account, including your own customer-defined managed policies and all AWS managed policies.</p> <p>You can filter the list of policies that is returned using the optional <code>OnlyAttached</code>, <code>Scope</code>, and <code>PathPrefix</code> parameters. For example, to list only the customer managed policies in your AWS account, set <code>Scope</code> to <code>Local</code>. To list only AWS managed policies, set <code>Scope</code> to <code>AWS</code>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>For more information about managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
listPolicies :: forall eff. IAM.Service -> IAMTypes.ListPoliciesRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListPoliciesResponse
listPolicies (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listPolicies"


-- | <p>Lists information about the versions of the specified managed policy, including the version that is currently set as the policy's default version.</p> <p>For more information about managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
listPolicyVersions :: forall eff. IAM.Service -> IAMTypes.ListPolicyVersionsRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListPolicyVersionsResponse
listPolicyVersions (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listPolicyVersions"


-- | <p>Lists the names of the inline policies that are embedded in the specified IAM role.</p> <p>An IAM role can also have managed policies attached to it. To list the managed policies that are attached to a role, use <a>ListAttachedRolePolicies</a>. For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. If there are no inline policies embedded with the specified role, the action returns an empty list.</p>
listRolePolicies :: forall eff. IAM.Service -> IAMTypes.ListRolePoliciesRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListRolePoliciesResponse
listRolePolicies (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listRolePolicies"


-- | <p>Lists the IAM roles that have the specified path prefix. If there are none, the action returns an empty list. For more information about roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listRoles :: forall eff. IAM.Service -> IAMTypes.ListRolesRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListRolesResponse
listRoles (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listRoles"


-- | <p>Lists the SAML provider resource objects defined in IAM in the account.</p> <note> <p> This operation requires <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note>
listSAMLProviders :: forall eff. IAM.Service -> IAMTypes.ListSAMLProvidersRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListSAMLProvidersResponse
listSAMLProviders (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listSAMLProviders"


-- | <p>Returns information about the SSH public keys associated with the specified IAM user. If there are none, the action returns an empty list.</p> <p>The SSH public keys returned by this action are used only for authenticating the IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p> <p>Although each user is limited to a small number of keys, you can still paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listSSHPublicKeys :: forall eff. IAM.Service -> IAMTypes.ListSSHPublicKeysRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListSSHPublicKeysResponse
listSSHPublicKeys (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listSSHPublicKeys"


-- | <p>Lists the server certificates stored in IAM that have the specified path prefix. If none exist, the action returns an empty list.</p> <p> You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>For more information about working with server certificates, including a list of AWS services that can use the server certificates that you manage with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>.</p>
listServerCertificates :: forall eff. IAM.Service -> IAMTypes.ListServerCertificatesRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListServerCertificatesResponse
listServerCertificates (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listServerCertificates"


-- | <p>Returns information about the service-specific credentials associated with the specified IAM user. If there are none, the action returns an empty list. The service-specific credentials returned by this action are used only for authenticating the IAM user to a specific service. For more information about using service-specific credentials to authenticate to an AWS service, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-gc.html">Set Up service-specific credentials</a> in the AWS CodeCommit User Guide.</p>
listServiceSpecificCredentials :: forall eff. IAM.Service -> IAMTypes.ListServiceSpecificCredentialsRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListServiceSpecificCredentialsResponse
listServiceSpecificCredentials (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listServiceSpecificCredentials"


-- | <p>Returns information about the signing certificates associated with the specified IAM user. If there are none, the action returns an empty list.</p> <p>Although each user is limited to a small number of signing certificates, you can still paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>If the <code>UserName</code> field is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request for this API. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p>
listSigningCertificates :: forall eff. IAM.Service -> IAMTypes.ListSigningCertificatesRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListSigningCertificatesResponse
listSigningCertificates (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listSigningCertificates"


-- | <p>Lists the names of the inline policies embedded in the specified IAM user.</p> <p>An IAM user can also have managed policies attached to it. To list the managed policies that are attached to a user, use <a>ListAttachedUserPolicies</a>. For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. If there are no inline policies embedded with the specified user, the action returns an empty list.</p>
listUserPolicies :: forall eff. IAM.Service -> IAMTypes.ListUserPoliciesRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListUserPoliciesResponse
listUserPolicies (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listUserPolicies"


-- | <p>Lists the IAM users that have the specified path prefix. If no path prefix is specified, the action returns all users in the AWS account. If there are none, the action returns an empty list.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listUsers :: forall eff. IAM.Service -> IAMTypes.ListUsersRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListUsersResponse
listUsers (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listUsers"


-- | <p>Lists the virtual MFA devices defined in the AWS account by assignment status. If you do not specify an assignment status, the action returns a list of all virtual MFA devices. Assignment status can be <code>Assigned</code>, <code>Unassigned</code>, or <code>Any</code>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listVirtualMFADevices :: forall eff. IAM.Service -> IAMTypes.ListVirtualMFADevicesRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ListVirtualMFADevicesResponse
listVirtualMFADevices (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listVirtualMFADevices"


-- | <p>Adds or updates an inline policy document that is embedded in the specified IAM group.</p> <p>A user can also have managed policies attached to it. To attach a managed policy to a group, use <a>AttachGroupPolicy</a>. To create a new managed policy, use <a>CreatePolicy</a>. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For information about limits on the number of inline policies that you can embed in a group, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because policy documents can be large, you should use POST rather than GET when calling <code>PutGroupPolicy</code>. For general information about using the Query API with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>
putGroupPolicy :: forall eff. IAM.Service -> IAMTypes.PutGroupPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
putGroupPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putGroupPolicy"


-- | <p>Adds or updates an inline policy document that is embedded in the specified IAM role.</p> <p>When you embed an inline policy in a role, the inline policy is used as part of the role's access (permissions) policy. The role's trust policy is created at the same time as the role, using <a>CreateRole</a>. You can update a role's trust policy using <a>UpdateAssumeRolePolicy</a>. For more information about IAM roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html">Using Roles to Delegate Permissions and Federate Identities</a>.</p> <p>A role can also have a managed policy attached to it. To attach a managed policy to a role, use <a>AttachRolePolicy</a>. To create a new managed policy, use <a>CreatePolicy</a>. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For information about limits on the number of inline policies that you can embed with a role, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because policy documents can be large, you should use POST rather than GET when calling <code>PutRolePolicy</code>. For general information about using the Query API with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>
putRolePolicy :: forall eff. IAM.Service -> IAMTypes.PutRolePolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
putRolePolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putRolePolicy"


-- | <p>Adds or updates an inline policy document that is embedded in the specified IAM user.</p> <p>An IAM user can also have a managed policy attached to it. To attach a managed policy to a user, use <a>AttachUserPolicy</a>. To create a new managed policy, use <a>CreatePolicy</a>. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For information about limits on the number of inline policies that you can embed in a user, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because policy documents can be large, you should use POST rather than GET when calling <code>PutUserPolicy</code>. For general information about using the Query API with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>
putUserPolicy :: forall eff. IAM.Service -> IAMTypes.PutUserPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
putUserPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putUserPolicy"


-- | <p>Removes the specified client ID (also known as audience) from the list of client IDs registered for the specified IAM OpenID Connect (OIDC) provider resource object.</p> <p>This action is idempotent; it does not fail or return an error if you try to remove a client ID that does not exist.</p>
removeClientIDFromOpenIDConnectProvider :: forall eff. IAM.Service -> IAMTypes.RemoveClientIDFromOpenIDConnectProviderRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
removeClientIDFromOpenIDConnectProvider (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "removeClientIDFromOpenIDConnectProvider"


-- | <p>Removes the specified IAM role from the specified EC2 instance profile.</p> <important> <p>Make sure you do not have any Amazon EC2 instances running with the role you are about to remove from the instance profile. Removing a role from an instance profile that is associated with a running instance might break any applications running on the instance.</p> </important> <p> For more information about IAM roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>. For more information about instance profiles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p>
removeRoleFromInstanceProfile :: forall eff. IAM.Service -> IAMTypes.RemoveRoleFromInstanceProfileRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
removeRoleFromInstanceProfile (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "removeRoleFromInstanceProfile"


-- | <p>Removes the specified user from the specified group.</p>
removeUserFromGroup :: forall eff. IAM.Service -> IAMTypes.RemoveUserFromGroupRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
removeUserFromGroup (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "removeUserFromGroup"


-- | <p>Resets the password for a service-specific credential. The new password is AWS generated and cryptographically strong. It cannot be configured by the user. Resetting the password immediately invalidates the previous password associated with this user.</p>
resetServiceSpecificCredential :: forall eff. IAM.Service -> IAMTypes.ResetServiceSpecificCredentialRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.ResetServiceSpecificCredentialResponse
resetServiceSpecificCredential (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "resetServiceSpecificCredential"


-- | <p>Synchronizes the specified MFA device with its IAM resource object on the AWS servers.</p> <p>For more information about creating and working with virtual MFA devices, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html">Using a Virtual MFA Device</a> in the <i>IAM User Guide</i>.</p>
resyncMFADevice :: forall eff. IAM.Service -> IAMTypes.ResyncMFADeviceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
resyncMFADevice (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "resyncMFADevice"


-- | <p>Sets the specified version of the specified policy as the policy's default (operative) version.</p> <p>This action affects all users, groups, and roles that the policy is attached to. To list the users, groups, and roles that the policy is attached to, use the <a>ListEntitiesForPolicy</a> API.</p> <p>For information about managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
setDefaultPolicyVersion :: forall eff. IAM.Service -> IAMTypes.SetDefaultPolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
setDefaultPolicyVersion (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setDefaultPolicyVersion"


-- | <p>Simulate how a set of IAM policies and optionally a resource-based policy works with a list of API actions and AWS resources to determine the policies' effective permissions. The policies are provided as strings.</p> <p>The simulation does not perform the API actions; it only checks the authorization to determine if the simulated policies allow or deny the actions.</p> <p>If you want to simulate existing policies attached to an IAM user, group, or role, use <a>SimulatePrincipalPolicy</a> instead.</p> <p>Context keys are variables maintained by AWS and its services that provide details about the context of an API query request. You can use the <code>Condition</code> element of an IAM policy to evaluate context keys. To get the list of context keys that the policies require for correct simulation, use <a>GetContextKeysForCustomPolicy</a>.</p> <p>If the output is long, you can use <code>MaxItems</code> and <code>Marker</code> parameters to paginate the results.</p>
simulateCustomPolicy :: forall eff. IAM.Service -> IAMTypes.SimulateCustomPolicyRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.SimulatePolicyResponse
simulateCustomPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "simulateCustomPolicy"


-- | <p>Simulate how a set of IAM policies attached to an IAM entity works with a list of API actions and AWS resources to determine the policies' effective permissions. The entity can be an IAM user, group, or role. If you specify a user, then the simulation also includes all of the policies that are attached to groups that the user belongs to .</p> <p>You can optionally include a list of one or more additional policies specified as strings to include in the simulation. If you want to simulate only policies specified as strings, use <a>SimulateCustomPolicy</a> instead.</p> <p>You can also optionally include one resource-based policy to be evaluated with each of the resources included in the simulation.</p> <p>The simulation does not perform the API actions, it only checks the authorization to determine if the simulated policies allow or deny the actions.</p> <p> <b>Note:</b> This API discloses information about the permissions granted to other users. If you do not want users to see other user's permissions, then consider allowing them to use <a>SimulateCustomPolicy</a> instead.</p> <p>Context keys are variables maintained by AWS and its services that provide details about the context of an API query request. You can use the <code>Condition</code> element of an IAM policy to evaluate context keys. To get the list of context keys that the policies require for correct simulation, use <a>GetContextKeysForPrincipalPolicy</a>.</p> <p>If the output is long, you can use the <code>MaxItems</code> and <code>Marker</code> parameters to paginate the results.</p>
simulatePrincipalPolicy :: forall eff. IAM.Service -> IAMTypes.SimulatePrincipalPolicyRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.SimulatePolicyResponse
simulatePrincipalPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "simulatePrincipalPolicy"


-- | <p>Changes the status of the specified access key from Active to Inactive, or vice versa. This action can be used to disable a user's key as part of a key rotation work flow.</p> <p>If the <code>UserName</code> field is not specified, the UserName is determined implicitly based on the AWS access key ID used to sign the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p> <p>For information about rotating keys, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/ManagingCredentials.html">Managing Keys and Certificates</a> in the <i>IAM User Guide</i>.</p>
updateAccessKey :: forall eff. IAM.Service -> IAMTypes.UpdateAccessKeyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateAccessKey (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateAccessKey"


-- | <p>Updates the password policy settings for the AWS account.</p> <note> <p>This action does not support partial updates. No parameters are required, but if you do not specify a parameter, that parameter's value reverts to its default value. See the <b>Request Parameters</b> section for each parameter's default value.</p> </note> <p> For more information about using a password policy, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html">Managing an IAM Password Policy</a> in the <i>IAM User Guide</i>.</p>
updateAccountPasswordPolicy :: forall eff. IAM.Service -> IAMTypes.UpdateAccountPasswordPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateAccountPasswordPolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateAccountPasswordPolicy"


-- | <p>Updates the policy that grants an IAM entity permission to assume a role. This is typically referred to as the "role trust policy". For more information about roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html">Using Roles to Delegate Permissions and Federate Identities</a>.</p>
updateAssumeRolePolicy :: forall eff. IAM.Service -> IAMTypes.UpdateAssumeRolePolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateAssumeRolePolicy (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateAssumeRolePolicy"


-- | <p>Updates the name and/or the path of the specified IAM group.</p> <important> <p> You should understand the implications of changing a group's path or name. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_WorkingWithGroupsAndUsers.html">Renaming Users and Groups</a> in the <i>IAM User Guide</i>.</p> </important> <note> <p>To change an IAM group name the requester must have appropriate permissions on both the source object and the target object. For example, to change "Managers" to "MGRs", the entity making the request must have permission on both "Managers" and "MGRs", or must have permission on all (*). For more information about permissions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html">Permissions and Policies</a>. </p> </note>
updateGroup :: forall eff. IAM.Service -> IAMTypes.UpdateGroupRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateGroup (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateGroup"


-- | <p>Changes the password for the specified IAM user.</p> <p>IAM users can change their own passwords by calling <a>ChangePassword</a>. For more information about modifying passwords, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html">Managing Passwords</a> in the <i>IAM User Guide</i>.</p>
updateLoginProfile :: forall eff. IAM.Service -> IAMTypes.UpdateLoginProfileRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateLoginProfile (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateLoginProfile"


-- | <p>Replaces the existing list of server certificate thumbprints associated with an OpenID Connect (OIDC) provider resource object with a new list of thumbprints.</p> <p>The list that you pass with this action completely replaces the existing list of thumbprints. (The lists are not merged.)</p> <p>Typically, you need to update a thumbprint only when the identity provider's certificate changes, which occurs rarely. However, if the provider's certificate <i>does</i> change, any attempt to assume an IAM role that specifies the OIDC provider as a principal fails until the certificate thumbprint is updated.</p> <note> <p>Because trust for the OIDC provider is ultimately derived from the provider's certificate and is validated by the thumbprint, it is a best practice to limit access to the <code>UpdateOpenIDConnectProviderThumbprint</code> action to highly-privileged users.</p> </note>
updateOpenIDConnectProviderThumbprint :: forall eff. IAM.Service -> IAMTypes.UpdateOpenIDConnectProviderThumbprintRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateOpenIDConnectProviderThumbprint (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateOpenIDConnectProviderThumbprint"


-- | <p>Modifies the description of a role.</p>
updateRoleDescription :: forall eff. IAM.Service -> IAMTypes.UpdateRoleDescriptionRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.UpdateRoleDescriptionResponse
updateRoleDescription (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateRoleDescription"


-- | <p>Updates the metadata document for an existing SAML provider resource object.</p> <note> <p>This operation requires <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note>
updateSAMLProvider :: forall eff. IAM.Service -> IAMTypes.UpdateSAMLProviderRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.UpdateSAMLProviderResponse
updateSAMLProvider (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateSAMLProvider"


-- | <p>Sets the status of an IAM user's SSH public key to active or inactive. SSH public keys that are inactive cannot be used for authentication. This action can be used to disable a user's SSH public key as part of a key rotation work flow.</p> <p>The SSH public key affected by this action is used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>
updateSSHPublicKey :: forall eff. IAM.Service -> IAMTypes.UpdateSSHPublicKeyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateSSHPublicKey (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateSSHPublicKey"


-- | <p>Updates the name and/or the path of the specified server certificate stored in IAM.</p> <p>For more information about working with server certificates, including a list of AWS services that can use the server certificates that you manage with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>.</p> <important> <p>You should understand the implications of changing a server certificate's path or name. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs_manage.html#RenamingServerCerts">Renaming a Server Certificate</a> in the <i>IAM User Guide</i>.</p> </important> <note> <p>To change a server certificate name the requester must have appropriate permissions on both the source object and the target object. For example, to change the name from "ProductionCert" to "ProdCert", the entity making the request must have permission on "ProductionCert" and "ProdCert", or must have permission on all (*). For more information about permissions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access Management</a> in the <i>IAM User Guide</i>.</p> </note>
updateServerCertificate :: forall eff. IAM.Service -> IAMTypes.UpdateServerCertificateRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateServerCertificate (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateServerCertificate"


-- | <p>Sets the status of a service-specific credential to <code>Active</code> or <code>Inactive</code>. Service-specific credentials that are inactive cannot be used for authentication to the service. This action can be used to disable a user’s service-specific credential as part of a credential rotation work flow.</p>
updateServiceSpecificCredential :: forall eff. IAM.Service -> IAMTypes.UpdateServiceSpecificCredentialRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateServiceSpecificCredential (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateServiceSpecificCredential"


-- | <p>Changes the status of the specified user signing certificate from active to disabled, or vice versa. This action can be used to disable an IAM user's signing certificate as part of a certificate rotation work flow.</p> <p>If the <code>UserName</code> field is not specified, the UserName is determined implicitly based on the AWS access key ID used to sign the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p>
updateSigningCertificate :: forall eff. IAM.Service -> IAMTypes.UpdateSigningCertificateRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateSigningCertificate (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateSigningCertificate"


-- | <p>Updates the name and/or the path of the specified IAM user.</p> <important> <p> You should understand the implications of changing an IAM user's path or name. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_renaming">Renaming an IAM User</a> and <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_rename.html">Renaming an IAM Group</a> in the <i>IAM User Guide</i>.</p> </important> <note> <p> To change a user name the requester must have appropriate permissions on both the source object and the target object. For example, to change Bob to Robert, the entity making the request must have permission on Bob and Robert, or must have permission on all (*). For more information about permissions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html">Permissions and Policies</a>. </p> </note>
updateUser :: forall eff. IAM.Service -> IAMTypes.UpdateUserRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateUser (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateUser"


-- | <p>Uploads an SSH public key and associates it with the specified IAM user.</p> <p>The SSH public key uploaded by this action can be used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>
uploadSSHPublicKey :: forall eff. IAM.Service -> IAMTypes.UploadSSHPublicKeyRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.UploadSSHPublicKeyResponse
uploadSSHPublicKey (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "uploadSSHPublicKey"


-- | <p>Uploads a server certificate entity for the AWS account. The server certificate entity includes a public key certificate, a private key, and an optional certificate chain, which should all be PEM-encoded.</p> <p>We recommend that you use <a href="https://aws.amazon.com/certificate-manager/">AWS Certificate Manager</a> to provision, manage, and deploy your server certificates. With ACM you can request a certificate, deploy it to AWS resources, and let ACM handle certificate renewals for you. Certificates provided by ACM are free. For more information about using ACM, see the <a href="http://docs.aws.amazon.com/acm/latest/userguide/">AWS Certificate Manager User Guide</a>.</p> <p>For more information about working with server certificates, including a list of AWS services that can use the server certificates that you manage with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>.</p> <p>For information about the number of server certificates you can upload, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html">Limitations on IAM Entities and Objects</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because the body of the public key certificate, private key, and the certificate chain can be large, you should use POST rather than GET when calling <code>UploadServerCertificate</code>. For information about setting up signatures and authorization through the API, go to <a href="http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html">Signing AWS API Requests</a> in the <i>AWS General Reference</i>. For general information about using the Query API with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html">Calling the API by Making HTTP Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>
uploadServerCertificate :: forall eff. IAM.Service -> IAMTypes.UploadServerCertificateRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.UploadServerCertificateResponse
uploadServerCertificate (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "uploadServerCertificate"


-- | <p>Uploads an X.509 signing certificate and associates it with the specified IAM user. Some AWS services use X.509 signing certificates to validate requests that are signed with a corresponding private key. When you upload the certificate, its default status is <code>Active</code>.</p> <p>If the <code>UserName</code> field is not specified, the IAM user name is determined implicitly based on the AWS access key ID used to sign the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p> <note> <p>Because the body of a X.509 certificate can be large, you should use POST rather than GET when calling <code>UploadSigningCertificate</code>. For information about setting up signatures and authorization through the API, go to <a href="http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html">Signing AWS API Requests</a> in the <i>AWS General Reference</i>. For general information about using the Query API with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>
uploadSigningCertificate :: forall eff. IAM.Service -> IAMTypes.UploadSigningCertificateRequest -> Aff (exception :: EXCEPTION | eff) IAMTypes.UploadSigningCertificateResponse
uploadSigningCertificate (IAM.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "uploadSigningCertificate"
