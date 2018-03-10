

-- | <fullname>AWS Identity and Access Management</fullname> <p>AWS Identity and Access Management (IAM) is a web service that you can use to manage users and user permissions under your AWS account. This guide provides descriptions of IAM actions that you can call programmatically. For general information about IAM, see <a href="http://aws.amazon.com/iam/">AWS Identity and Access Management (IAM)</a>. For the user guide for IAM, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/">Using IAM</a>. </p> <note> <p>AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to IAM and AWS. For example, the SDKs take care of tasks such as cryptographically signing requests (see below), managing errors, and retrying requests automatically. For information about the AWS SDKs, including how to download and install them, see the <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a> page. </p> </note> <p>We recommend that you use the AWS SDKs to make programmatic API calls to IAM. However, you can also use the IAM Query API to make direct calls to the IAM web service. To learn more about the IAM Query API, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in the <i>Using IAM</i> guide. IAM supports GET and POST requests for all actions. That is, the API does not require you to use GET for some actions and POST for others. However, GET requests are subject to the limitation size of a URL. Therefore, for operations that require larger sizes, use a POST request. </p> <p> <b>Signing Requests</b> </p> <p>Requests must be signed using an access key ID and a secret access key. We strongly recommend that you do not use your AWS account access key ID and secret access key for everyday work with IAM. You can use the access key ID and secret access key for an IAM user or you can use the AWS Security Token Service to generate temporary security credentials and use those to sign requests.</p> <p>To sign requests, we recommend that you use <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>. If you have an existing application that uses Signature Version 2, you do not have to update it to use Signature Version 4. However, some operations now require Signature Version 4. The documentation for operations that require version 4 indicate this requirement. </p> <p> <b>Additional Resources</b> </p> <p>For more information, see the following:</p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html">AWS Security Credentials</a>. This topic provides general information about the types of credentials used for accessing AWS. </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/IAMBestPractices.html">IAM Best Practices</a>. This topic presents a list of suggestions for using the IAM service to help secure your AWS resources. </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html">Signing AWS API Requests</a>. This set of topics walk you through the process of signing a request using an access key ID and secret access key. </p> </li> </ul>
module AWS.IAM where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "IAM" :: String


-- | <p>Adds a new client ID (also known as audience) to the list of client IDs already registered for the specified IAM OpenID Connect (OIDC) provider resource.</p> <p>This action is idempotent; it does not fail or return an error if you add an existing client ID to the provider.</p>
addClientIDToOpenIDConnectProvider :: forall eff. AddClientIDToOpenIDConnectProviderRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
addClientIDToOpenIDConnectProvider = Request.request serviceName "addClientIDToOpenIDConnectProvider" 


-- | <p>Adds the specified IAM role to the specified instance profile. An instance profile can contain only one role, and this limit cannot be increased.</p> <note> <p>The caller of this API must be granted the <code>PassRole</code> permission on the IAM role by a permission policy.</p> </note> <p>For more information about roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>. For more information about instance profiles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p>
addRoleToInstanceProfile :: forall eff. AddRoleToInstanceProfileRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
addRoleToInstanceProfile = Request.request serviceName "addRoleToInstanceProfile" 


-- | <p>Adds the specified user to the specified group.</p>
addUserToGroup :: forall eff. AddUserToGroupRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
addUserToGroup = Request.request serviceName "addUserToGroup" 


-- | <p>Attaches the specified managed policy to the specified IAM group.</p> <p>You use this API to attach a managed policy to a group. To embed an inline policy in a group, use <a>PutGroupPolicy</a>.</p> <p>For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
attachGroupPolicy :: forall eff. AttachGroupPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
attachGroupPolicy = Request.request serviceName "attachGroupPolicy" 


-- | <p>Attaches the specified managed policy to the specified IAM role. When you attach a managed policy to a role, the managed policy becomes part of the role's permission (access) policy.</p> <note> <p>You cannot use a managed policy as the role's trust policy. The role's trust policy is created at the same time as the role, using <a>CreateRole</a>. You can update a role's trust policy using <a>UpdateAssumeRolePolicy</a>.</p> </note> <p>Use this API to attach a <i>managed</i> policy to a role. To embed an inline policy in a role, use <a>PutRolePolicy</a>. For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
attachRolePolicy :: forall eff. AttachRolePolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
attachRolePolicy = Request.request serviceName "attachRolePolicy" 


-- | <p>Attaches the specified managed policy to the specified user.</p> <p>You use this API to attach a <i>managed</i> policy to a user. To embed an inline policy in a user, use <a>PutUserPolicy</a>.</p> <p>For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
attachUserPolicy :: forall eff. AttachUserPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
attachUserPolicy = Request.request serviceName "attachUserPolicy" 


-- | <p>Changes the password of the IAM user who is calling this action. The root account password is not affected by this action.</p> <p>To change the password for a different user, see <a>UpdateLoginProfile</a>. For more information about modifying passwords, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html">Managing Passwords</a> in the <i>IAM User Guide</i>.</p>
changePassword :: forall eff. ChangePasswordRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
changePassword = Request.request serviceName "changePassword" 


-- | <p> Creates a new AWS secret access key and corresponding AWS access key ID for the specified user. The default status for new keys is <code>Active</code>.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p> <p> For information about limits on the number of keys you can create, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p> <important> <p>To ensure the security of your AWS account, the secret access key is accessible only during key and user creation. You must save the key (for example, in a text file) if you want to be able to access it again. If a secret key is lost, you can delete the access keys for the associated user and then create new keys.</p> </important>
createAccessKey :: forall eff. CreateAccessKeyRequest -> Aff (exception :: EXCEPTION | eff) CreateAccessKeyResponse
createAccessKey = Request.request serviceName "createAccessKey" 


-- | <p>Creates an alias for your AWS account. For information about using an AWS account alias, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html">Using an Alias for Your AWS Account ID</a> in the <i>IAM User Guide</i>.</p>
createAccountAlias :: forall eff. CreateAccountAliasRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
createAccountAlias = Request.request serviceName "createAccountAlias" 


-- | <p>Creates a new group.</p> <p> For information about the number of groups you can create, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>
createGroup :: forall eff. CreateGroupRequest -> Aff (exception :: EXCEPTION | eff) CreateGroupResponse
createGroup = Request.request serviceName "createGroup" 


-- | <p> Creates a new instance profile. For information about instance profiles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p> <p> For information about the number of instance profiles you can create, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>
createInstanceProfile :: forall eff. CreateInstanceProfileRequest -> Aff (exception :: EXCEPTION | eff) CreateInstanceProfileResponse
createInstanceProfile = Request.request serviceName "createInstanceProfile" 


-- | <p> Creates a password for the specified user, giving the user the ability to access AWS services through the AWS Management Console. For more information about managing passwords, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html">Managing Passwords</a> in the <i>IAM User Guide</i>.</p>
createLoginProfile :: forall eff. CreateLoginProfileRequest -> Aff (exception :: EXCEPTION | eff) CreateLoginProfileResponse
createLoginProfile = Request.request serviceName "createLoginProfile" 


-- | <p>Creates an IAM entity to describe an identity provider (IdP) that supports <a href="http://openid.net/connect/">OpenID Connect (OIDC)</a>.</p> <p>The OIDC provider that you create with this operation can be used as a principal in a role's trust policy to establish a trust relationship between AWS and the OIDC provider.</p> <p>When you create the IAM OIDC provider, you specify the URL of the OIDC identity provider (IdP) to trust, a list of client IDs (also known as audiences) that identify the application or applications that are allowed to authenticate using the OIDC provider, and a list of thumbprints of the server certificate(s) that the IdP uses. You get all of this information from the OIDC IdP that you want to use for access to AWS.</p> <note> <p>Because trust for the OIDC provider is ultimately derived from the IAM provider that this action creates, it is a best practice to limit access to the <a>CreateOpenIDConnectProvider</a> action to highly-privileged users.</p> </note>
createOpenIDConnectProvider :: forall eff. CreateOpenIDConnectProviderRequest -> Aff (exception :: EXCEPTION | eff) CreateOpenIDConnectProviderResponse
createOpenIDConnectProvider = Request.request serviceName "createOpenIDConnectProvider" 


-- | <p>Creates a new managed policy for your AWS account.</p> <p>This operation creates a policy version with a version identifier of <code>v1</code> and sets v1 as the policy's default version. For more information about policy versions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p> <p>For more information about managed policies in general, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
createPolicy :: forall eff. CreatePolicyRequest -> Aff (exception :: EXCEPTION | eff) CreatePolicyResponse
createPolicy = Request.request serviceName "createPolicy" 


-- | <p>Creates a new version of the specified managed policy. To update a managed policy, you create a new policy version. A managed policy can have up to five versions. If the policy has five versions, you must delete an existing version using <a>DeletePolicyVersion</a> before you create a new version.</p> <p>Optionally, you can set the new version as the policy's default version. The default version is the version that is in effect for the IAM users, groups, and roles to which the policy is attached.</p> <p>For more information about managed policy versions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>
createPolicyVersion :: forall eff. CreatePolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) CreatePolicyVersionResponse
createPolicyVersion = Request.request serviceName "createPolicyVersion" 


-- | <p>Creates a new role for your AWS account. For more information about roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>. For information about limitations on role names and the number of roles you can create, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>
createRole :: forall eff. CreateRoleRequest -> Aff (exception :: EXCEPTION | eff) CreateRoleResponse
createRole = Request.request serviceName "createRole" 


-- | <p>Creates an IAM resource that describes an identity provider (IdP) that supports SAML 2.0.</p> <p>The SAML provider resource that you create with this operation can be used as a principal in an IAM role's trust policy to enable federated users who sign-in using the SAML IdP to assume the role. You can create an IAM role that supports Web-based single sign-on (SSO) to the AWS Management Console or one that supports API access to AWS.</p> <p>When you create the SAML provider resource, you upload an a SAML metadata document that you get from your IdP and that includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that the IdP sends. You must generate the metadata document using the identity management software that is used as your organization's IdP.</p> <note> <p> This operation requires <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note> <p> For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-saml.html">Enabling SAML 2.0 Federated Users to Access the AWS Management Console</a> and <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About SAML 2.0-based Federation</a> in the <i>IAM User Guide</i>.</p>
createSAMLProvider :: forall eff. CreateSAMLProviderRequest -> Aff (exception :: EXCEPTION | eff) CreateSAMLProviderResponse
createSAMLProvider = Request.request serviceName "createSAMLProvider" 


-- | <p>Creates an IAM role that is linked to a specific AWS service. The service controls the attached policies and when the role can be deleted. This helps ensure that the service is not broken by an unexpectedly changed or deleted role, which could put your AWS resources into an unknown state. Allowing the service to control the role helps improve service stability and proper cleanup when a service and its role are no longer needed.</p> <p>The name of the role is autogenerated by combining the string that you specify for the <code>AWSServiceName</code> parameter with the string that you specify for the <code>CustomSuffix</code> parameter. The resulting name must be unique in your account or the request fails.</p> <p>To attach a policy to this service-linked role, you must make the request using the AWS service that depends on this role.</p>
createServiceLinkedRole :: forall eff. CreateServiceLinkedRoleRequest -> Aff (exception :: EXCEPTION | eff) CreateServiceLinkedRoleResponse
createServiceLinkedRole = Request.request serviceName "createServiceLinkedRole" 


-- | <p>Generates a set of credentials consisting of a user name and password that can be used to access the service specified in the request. These credentials are generated by IAM, and can be used only for the specified service. </p> <p>You can have a maximum of two sets of service-specific credentials for each supported service per user.</p> <p>The only supported service at this time is AWS CodeCommit.</p> <p>You can reset the password to a new service-generated value by calling <a>ResetServiceSpecificCredential</a>.</p> <p>For more information about service-specific credentials, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_ssh-keys.html">Using IAM with AWS CodeCommit: Git Credentials, SSH Keys, and AWS Access Keys</a> in the <i>IAM User Guide</i>.</p>
createServiceSpecificCredential :: forall eff. CreateServiceSpecificCredentialRequest -> Aff (exception :: EXCEPTION | eff) CreateServiceSpecificCredentialResponse
createServiceSpecificCredential = Request.request serviceName "createServiceSpecificCredential" 


-- | <p>Creates a new IAM user for your AWS account.</p> <p> For information about limitations on the number of IAM users you can create, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>
createUser :: forall eff. CreateUserRequest -> Aff (exception :: EXCEPTION | eff) CreateUserResponse
createUser = Request.request serviceName "createUser" 


-- | <p>Creates a new virtual MFA device for the AWS account. After creating the virtual MFA, use <a>EnableMFADevice</a> to attach the MFA device to an IAM user. For more information about creating and working with virtual MFA devices, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html">Using a Virtual MFA Device</a> in the <i>IAM User Guide</i>.</p> <p>For information about limits on the number of MFA devices you can create, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on Entities</a> in the <i>IAM User Guide</i>.</p> <important> <p>The seed information contained in the QR code and the Base32 string should be treated like any other secret access information, such as your AWS access keys or your passwords. After you provision your virtual device, you should ensure that the information is destroyed following secure procedures.</p> </important>
createVirtualMFADevice :: forall eff. CreateVirtualMFADeviceRequest -> Aff (exception :: EXCEPTION | eff) CreateVirtualMFADeviceResponse
createVirtualMFADevice = Request.request serviceName "createVirtualMFADevice" 


-- | <p>Deactivates the specified MFA device and removes it from association with the user name for which it was originally enabled.</p> <p>For more information about creating and working with virtual MFA devices, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html">Using a Virtual MFA Device</a> in the <i>IAM User Guide</i>.</p>
deactivateMFADevice :: forall eff. DeactivateMFADeviceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deactivateMFADevice = Request.request serviceName "deactivateMFADevice" 


-- | <p>Deletes the access key pair associated with the specified IAM user.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p>
deleteAccessKey :: forall eff. DeleteAccessKeyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteAccessKey = Request.request serviceName "deleteAccessKey" 


-- | <p> Deletes the specified AWS account alias. For information about using an AWS account alias, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html">Using an Alias for Your AWS Account ID</a> in the <i>IAM User Guide</i>.</p>
deleteAccountAlias :: forall eff. DeleteAccountAliasRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteAccountAlias = Request.request serviceName "deleteAccountAlias" 


-- | <p>Deletes the password policy for the AWS account. There are no parameters.</p>
deleteAccountPasswordPolicy :: forall eff.  Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteAccountPasswordPolicy = Request.request serviceName "deleteAccountPasswordPolicy" (Types.NoInput unit)


-- | <p>Deletes the specified IAM group. The group must not contain any users or have any attached policies.</p>
deleteGroup :: forall eff. DeleteGroupRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteGroup = Request.request serviceName "deleteGroup" 


-- | <p>Deletes the specified inline policy that is embedded in the specified IAM group.</p> <p>A group can also have managed policies attached to it. To detach a managed policy from a group, use <a>DetachGroupPolicy</a>. For more information about policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
deleteGroupPolicy :: forall eff. DeleteGroupPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteGroupPolicy = Request.request serviceName "deleteGroupPolicy" 


-- | <p>Deletes the specified instance profile. The instance profile must not have an associated role.</p> <important> <p>Make sure you do not have any Amazon EC2 instances running with the instance profile you are about to delete. Deleting a role or instance profile that is associated with a running instance will break any applications running on the instance.</p> </important> <p>For more information about instance profiles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p>
deleteInstanceProfile :: forall eff. DeleteInstanceProfileRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteInstanceProfile = Request.request serviceName "deleteInstanceProfile" 


-- | <p>Deletes the password for the specified IAM user, which terminates the user's ability to access AWS services through the AWS Management Console.</p> <important> <p> Deleting a user's password does not prevent a user from accessing AWS through the command line interface or the API. To prevent all user access you must also either make any access keys inactive or delete them. For more information about making keys inactive or deleting them, see <a>UpdateAccessKey</a> and <a>DeleteAccessKey</a>. </p> </important>
deleteLoginProfile :: forall eff. DeleteLoginProfileRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteLoginProfile = Request.request serviceName "deleteLoginProfile" 


-- | <p>Deletes an OpenID Connect identity provider (IdP) resource object in IAM.</p> <p>Deleting an IAM OIDC provider resource does not update any roles that reference the provider as a principal in their trust policies. Any attempt to assume a role that references a deleted provider fails.</p> <p>This action is idempotent; it does not fail or return an error if you call the action for a provider that does not exist.</p>
deleteOpenIDConnectProvider :: forall eff. DeleteOpenIDConnectProviderRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteOpenIDConnectProvider = Request.request serviceName "deleteOpenIDConnectProvider" 


-- | <p>Deletes the specified managed policy.</p> <p>Before you can delete a managed policy, you must first detach the policy from all users, groups, and roles that it is attached to, and you must delete all of the policy's versions. The following steps describe the process for deleting a managed policy:</p> <ul> <li> <p>Detach the policy from all users, groups, and roles that the policy is attached to, using the <a>DetachUserPolicy</a>, <a>DetachGroupPolicy</a>, or <a>DetachRolePolicy</a> APIs. To list all the users, groups, and roles that a policy is attached to, use <a>ListEntitiesForPolicy</a>.</p> </li> <li> <p>Delete all versions of the policy using <a>DeletePolicyVersion</a>. To list the policy's versions, use <a>ListPolicyVersions</a>. You cannot use <a>DeletePolicyVersion</a> to delete the version that is marked as the default version. You delete the policy's default version in the next step of the process.</p> </li> <li> <p>Delete the policy (this automatically deletes the policy's default version) using this API.</p> </li> </ul> <p>For information about managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
deletePolicy :: forall eff. DeletePolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deletePolicy = Request.request serviceName "deletePolicy" 


-- | <p>Deletes the specified version from the specified managed policy.</p> <p>You cannot delete the default version from a policy using this API. To delete the default version from a policy, use <a>DeletePolicy</a>. To find out which version of a policy is marked as the default version, use <a>ListPolicyVersions</a>.</p> <p>For information about versions for managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>
deletePolicyVersion :: forall eff. DeletePolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deletePolicyVersion = Request.request serviceName "deletePolicyVersion" 


-- | <p>Deletes the specified role. The role must not have any policies attached. For more information about roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>.</p> <important> <p>Make sure you do not have any Amazon EC2 instances running with the role you are about to delete. Deleting a role or instance profile that is associated with a running instance will break any applications running on the instance.</p> </important>
deleteRole :: forall eff. DeleteRoleRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteRole = Request.request serviceName "deleteRole" 


-- | <p>Deletes the specified inline policy that is embedded in the specified IAM role.</p> <p>A role can also have managed policies attached to it. To detach a managed policy from a role, use <a>DetachRolePolicy</a>. For more information about policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
deleteRolePolicy :: forall eff. DeleteRolePolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteRolePolicy = Request.request serviceName "deleteRolePolicy" 


-- | <p>Deletes a SAML provider resource in IAM.</p> <p>Deleting the provider resource from IAM does not update any roles that reference the SAML provider resource's ARN as a principal in their trust policies. Any attempt to assume a role that references a non-existent provider resource ARN fails.</p> <note> <p> This operation requires <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note>
deleteSAMLProvider :: forall eff. DeleteSAMLProviderRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteSAMLProvider = Request.request serviceName "deleteSAMLProvider" 


-- | <p>Deletes the specified SSH public key.</p> <p>The SSH public key deleted by this action is used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>
deleteSSHPublicKey :: forall eff. DeleteSSHPublicKeyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteSSHPublicKey = Request.request serviceName "deleteSSHPublicKey" 


-- | <p>Deletes the specified server certificate.</p> <p>For more information about working with server certificates, including a list of AWS services that can use the server certificates that you manage with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>.</p> <important> <p> If you are using a server certificate with Elastic Load Balancing, deleting the certificate could have implications for your application. If Elastic Load Balancing doesn't detect the deletion of bound certificates, it may continue to use the certificates. This could cause Elastic Load Balancing to stop accepting traffic. We recommend that you remove the reference to the certificate from Elastic Load Balancing before using this command to delete the certificate. For more information, go to <a href="http://docs.aws.amazon.com/ElasticLoadBalancing/latest/APIReference/API_DeleteLoadBalancerListeners.html">DeleteLoadBalancerListeners</a> in the <i>Elastic Load Balancing API Reference</i>.</p> </important>
deleteServerCertificate :: forall eff. DeleteServerCertificateRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteServerCertificate = Request.request serviceName "deleteServerCertificate" 


-- | <p>Submits a service-linked role deletion request and returns a <code>DeletionTaskId</code>, which you can use to check the status of the deletion. Before you call this operation, confirm that the role has no active sessions and that any resources used by the role in the linked service are deleted. If you call this operation more than once for the same service-linked role and an earlier deletion task is not complete, then the <code>DeletionTaskId</code> of the earlier request is returned.</p> <p>If you submit a deletion request for a service-linked role whose linked service is still accessing a resource, then the deletion task fails. If it fails, the <a>GetServiceLinkedRoleDeletionStatus</a> API operation returns the reason for the failure, including the resources that must be deleted. To delete the service-linked role, you must first remove those resources from the linked service and then submit the deletion request again. Resources are specific to the service that is linked to the role. For more information about removing resources from a service, see the <a href="http://docs.aws.amazon.com/">AWS documentation</a> for your service.</p> <p>For more information about service-linked roles, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role">Roles Terms and Concepts: AWS Service-Linked Role</a> in the <i>IAM User Guide</i>.</p>
deleteServiceLinkedRole :: forall eff. DeleteServiceLinkedRoleRequest -> Aff (exception :: EXCEPTION | eff) DeleteServiceLinkedRoleResponse
deleteServiceLinkedRole = Request.request serviceName "deleteServiceLinkedRole" 


-- | <p>Deletes the specified service-specific credential.</p>
deleteServiceSpecificCredential :: forall eff. DeleteServiceSpecificCredentialRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteServiceSpecificCredential = Request.request serviceName "deleteServiceSpecificCredential" 


-- | <p>Deletes a signing certificate associated with the specified IAM user.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated IAM users.</p>
deleteSigningCertificate :: forall eff. DeleteSigningCertificateRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteSigningCertificate = Request.request serviceName "deleteSigningCertificate" 


-- | <p>Deletes the specified IAM user. The user must not belong to any groups or have any access keys, signing certificates, or attached policies.</p>
deleteUser :: forall eff. DeleteUserRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteUser = Request.request serviceName "deleteUser" 


-- | <p>Deletes the specified inline policy that is embedded in the specified IAM user.</p> <p>A user can also have managed policies attached to it. To detach a managed policy from a user, use <a>DetachUserPolicy</a>. For more information about policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
deleteUserPolicy :: forall eff. DeleteUserPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteUserPolicy = Request.request serviceName "deleteUserPolicy" 


-- | <p>Deletes a virtual MFA device.</p> <note> <p> You must deactivate a user's virtual MFA device before you can delete it. For information about deactivating MFA devices, see <a>DeactivateMFADevice</a>. </p> </note>
deleteVirtualMFADevice :: forall eff. DeleteVirtualMFADeviceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteVirtualMFADevice = Request.request serviceName "deleteVirtualMFADevice" 


-- | <p>Removes the specified managed policy from the specified IAM group.</p> <p>A group can also have inline policies embedded with it. To delete an inline policy, use the <a>DeleteGroupPolicy</a> API. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
detachGroupPolicy :: forall eff. DetachGroupPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
detachGroupPolicy = Request.request serviceName "detachGroupPolicy" 


-- | <p>Removes the specified managed policy from the specified role.</p> <p>A role can also have inline policies embedded with it. To delete an inline policy, use the <a>DeleteRolePolicy</a> API. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
detachRolePolicy :: forall eff. DetachRolePolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
detachRolePolicy = Request.request serviceName "detachRolePolicy" 


-- | <p>Removes the specified managed policy from the specified user.</p> <p>A user can also have inline policies embedded with it. To delete an inline policy, use the <a>DeleteUserPolicy</a> API. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
detachUserPolicy :: forall eff. DetachUserPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
detachUserPolicy = Request.request serviceName "detachUserPolicy" 


-- | <p>Enables the specified MFA device and associates it with the specified IAM user. When enabled, the MFA device is required for every subsequent login by the IAM user associated with the device.</p>
enableMFADevice :: forall eff. EnableMFADeviceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
enableMFADevice = Request.request serviceName "enableMFADevice" 


-- | <p> Generates a credential report for the AWS account. For more information about the credential report, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting Credential Reports</a> in the <i>IAM User Guide</i>.</p>
generateCredentialReport :: forall eff.  Aff (exception :: EXCEPTION | eff) GenerateCredentialReportResponse
generateCredentialReport = Request.request serviceName "generateCredentialReport" (Types.NoInput unit)


-- | <p>Retrieves information about when the specified access key was last used. The information includes the date and time of last use, along with the AWS service and region that were specified in the last request made with that key.</p>
getAccessKeyLastUsed :: forall eff. GetAccessKeyLastUsedRequest -> Aff (exception :: EXCEPTION | eff) GetAccessKeyLastUsedResponse
getAccessKeyLastUsed = Request.request serviceName "getAccessKeyLastUsed" 


-- | <p>Retrieves information about all IAM users, groups, roles, and policies in your AWS account, including their relationships to one another. Use this API to obtain a snapshot of the configuration of IAM permissions (users, groups, roles, and policies) in your account.</p> <p>You can optionally filter the results using the <code>Filter</code> parameter. You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
getAccountAuthorizationDetails :: forall eff. GetAccountAuthorizationDetailsRequest -> Aff (exception :: EXCEPTION | eff) GetAccountAuthorizationDetailsResponse
getAccountAuthorizationDetails = Request.request serviceName "getAccountAuthorizationDetails" 


-- | <p>Retrieves the password policy for the AWS account. For more information about using a password policy, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html">Managing an IAM Password Policy</a>.</p>
getAccountPasswordPolicy :: forall eff.  Aff (exception :: EXCEPTION | eff) GetAccountPasswordPolicyResponse
getAccountPasswordPolicy = Request.request serviceName "getAccountPasswordPolicy" (Types.NoInput unit)


-- | <p>Retrieves information about IAM entity usage and IAM quotas in the AWS account.</p> <p> For information about limitations on IAM entities, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>
getAccountSummary :: forall eff.  Aff (exception :: EXCEPTION | eff) GetAccountSummaryResponse
getAccountSummary = Request.request serviceName "getAccountSummary" (Types.NoInput unit)


-- | <p>Gets a list of all of the context keys referenced in the input policies. The policies are supplied as a list of one or more strings. To get the context keys from policies associated with an IAM user, group, or role, use <a>GetContextKeysForPrincipalPolicy</a>.</p> <p>Context keys are variables maintained by AWS and its services that provide details about the context of an API query request, and can be evaluated by testing against a value specified in an IAM policy. Use GetContextKeysForCustomPolicy to understand what key names and values you must supply when you call <a>SimulateCustomPolicy</a>. Note that all parameters are shown in unencoded form here for clarity, but must be URL encoded to be included as a part of a real HTML request.</p>
getContextKeysForCustomPolicy :: forall eff. GetContextKeysForCustomPolicyRequest -> Aff (exception :: EXCEPTION | eff) GetContextKeysForPolicyResponse
getContextKeysForCustomPolicy = Request.request serviceName "getContextKeysForCustomPolicy" 


-- | <p>Gets a list of all of the context keys referenced in all of the IAM policies attached to the specified IAM entity. The entity can be an IAM user, group, or role. If you specify a user, then the request also includes all of the policies attached to groups that the user is a member of.</p> <p>You can optionally include a list of one or more additional policies, specified as strings. If you want to include <i>only</i> a list of policies by string, use <a>GetContextKeysForCustomPolicy</a> instead.</p> <p> <b>Note:</b> This API discloses information about the permissions granted to other users. If you do not want users to see other user's permissions, then consider allowing them to use <a>GetContextKeysForCustomPolicy</a> instead.</p> <p>Context keys are variables maintained by AWS and its services that provide details about the context of an API query request, and can be evaluated by testing against a value in an IAM policy. Use <a>GetContextKeysForPrincipalPolicy</a> to understand what key names and values you must supply when you call <a>SimulatePrincipalPolicy</a>.</p>
getContextKeysForPrincipalPolicy :: forall eff. GetContextKeysForPrincipalPolicyRequest -> Aff (exception :: EXCEPTION | eff) GetContextKeysForPolicyResponse
getContextKeysForPrincipalPolicy = Request.request serviceName "getContextKeysForPrincipalPolicy" 


-- | <p> Retrieves a credential report for the AWS account. For more information about the credential report, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting Credential Reports</a> in the <i>IAM User Guide</i>.</p>
getCredentialReport :: forall eff.  Aff (exception :: EXCEPTION | eff) GetCredentialReportResponse
getCredentialReport = Request.request serviceName "getCredentialReport" (Types.NoInput unit)


-- | <p> Returns a list of IAM users that are in the specified IAM group. You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
getGroup :: forall eff. GetGroupRequest -> Aff (exception :: EXCEPTION | eff) GetGroupResponse
getGroup = Request.request serviceName "getGroup" 


-- | <p>Retrieves the specified inline policy document that is embedded in the specified IAM group.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>An IAM group can also have managed policies attached to it. To retrieve a managed policy document that is attached to a group, use <a>GetPolicy</a> to determine the policy's default version, then use <a>GetPolicyVersion</a> to retrieve the policy document.</p> <p>For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
getGroupPolicy :: forall eff. GetGroupPolicyRequest -> Aff (exception :: EXCEPTION | eff) GetGroupPolicyResponse
getGroupPolicy = Request.request serviceName "getGroupPolicy" 


-- | <p> Retrieves information about the specified instance profile, including the instance profile's path, GUID, ARN, and role. For more information about instance profiles, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a> in the <i>IAM User Guide</i>.</p>
getInstanceProfile :: forall eff. GetInstanceProfileRequest -> Aff (exception :: EXCEPTION | eff) GetInstanceProfileResponse
getInstanceProfile = Request.request serviceName "getInstanceProfile" 


-- | <p>Retrieves the user name and password-creation date for the specified IAM user. If the user has not been assigned a password, the action returns a 404 (<code>NoSuchEntity</code>) error.</p>
getLoginProfile :: forall eff. GetLoginProfileRequest -> Aff (exception :: EXCEPTION | eff) GetLoginProfileResponse
getLoginProfile = Request.request serviceName "getLoginProfile" 


-- | <p>Returns information about the specified OpenID Connect (OIDC) provider resource object in IAM.</p>
getOpenIDConnectProvider :: forall eff. GetOpenIDConnectProviderRequest -> Aff (exception :: EXCEPTION | eff) GetOpenIDConnectProviderResponse
getOpenIDConnectProvider = Request.request serviceName "getOpenIDConnectProvider" 


-- | <p>Retrieves information about the specified managed policy, including the policy's default version and the total number of IAM users, groups, and roles to which the policy is attached. To retrieve the list of the specific users, groups, and roles that the policy is attached to, use the <a>ListEntitiesForPolicy</a> API. This API returns metadata about the policy. To retrieve the actual policy document for a specific version of the policy, use <a>GetPolicyVersion</a>.</p> <p>This API retrieves information about managed policies. To retrieve information about an inline policy that is embedded with an IAM user, group, or role, use the <a>GetUserPolicy</a>, <a>GetGroupPolicy</a>, or <a>GetRolePolicy</a> API.</p> <p>For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
getPolicy :: forall eff. GetPolicyRequest -> Aff (exception :: EXCEPTION | eff) GetPolicyResponse
getPolicy = Request.request serviceName "getPolicy" 


-- | <p>Retrieves information about the specified version of the specified managed policy, including the policy document.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>To list the available versions for a policy, use <a>ListPolicyVersions</a>.</p> <p>This API retrieves information about managed policies. To retrieve information about an inline policy that is embedded in a user, group, or role, use the <a>GetUserPolicy</a>, <a>GetGroupPolicy</a>, or <a>GetRolePolicy</a> API.</p> <p>For more information about the types of policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For more information about managed policy versions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>
getPolicyVersion :: forall eff. GetPolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) GetPolicyVersionResponse
getPolicyVersion = Request.request serviceName "getPolicyVersion" 


-- | <p>Retrieves information about the specified role, including the role's path, GUID, ARN, and the role's trust policy that grants permission to assume the role. For more information about roles, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note>
getRole :: forall eff. GetRoleRequest -> Aff (exception :: EXCEPTION | eff) GetRoleResponse
getRole = Request.request serviceName "getRole" 


-- | <p>Retrieves the specified inline policy document that is embedded with the specified IAM role.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>An IAM role can also have managed policies attached to it. To retrieve a managed policy document that is attached to a role, use <a>GetPolicy</a> to determine the policy's default version, then use <a>GetPolicyVersion</a> to retrieve the policy document.</p> <p>For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For more information about roles, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html">Using Roles to Delegate Permissions and Federate Identities</a>.</p>
getRolePolicy :: forall eff. GetRolePolicyRequest -> Aff (exception :: EXCEPTION | eff) GetRolePolicyResponse
getRolePolicy = Request.request serviceName "getRolePolicy" 


-- | <p>Returns the SAML provider metadocument that was uploaded when the IAM SAML provider resource object was created or updated.</p> <note> <p>This operation requires <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note>
getSAMLProvider :: forall eff. GetSAMLProviderRequest -> Aff (exception :: EXCEPTION | eff) GetSAMLProviderResponse
getSAMLProvider = Request.request serviceName "getSAMLProvider" 


-- | <p>Retrieves the specified SSH public key, including metadata about the key.</p> <p>The SSH public key retrieved by this action is used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>
getSSHPublicKey :: forall eff. GetSSHPublicKeyRequest -> Aff (exception :: EXCEPTION | eff) GetSSHPublicKeyResponse
getSSHPublicKey = Request.request serviceName "getSSHPublicKey" 


-- | <p>Retrieves information about the specified server certificate stored in IAM.</p> <p>For more information about working with server certificates, including a list of AWS services that can use the server certificates that you manage with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>.</p>
getServerCertificate :: forall eff. GetServerCertificateRequest -> Aff (exception :: EXCEPTION | eff) GetServerCertificateResponse
getServerCertificate = Request.request serviceName "getServerCertificate" 


-- | <p>Retrieves the status of your service-linked role deletion. After you use the <a>DeleteServiceLinkedRole</a> API operation to submit a service-linked role for deletion, you can use the <code>DeletionTaskId</code> parameter in <code>GetServiceLinkedRoleDeletionStatus</code> to check the status of the deletion. If the deletion fails, this operation returns the reason that it failed.</p>
getServiceLinkedRoleDeletionStatus :: forall eff. GetServiceLinkedRoleDeletionStatusRequest -> Aff (exception :: EXCEPTION | eff) GetServiceLinkedRoleDeletionStatusResponse
getServiceLinkedRoleDeletionStatus = Request.request serviceName "getServiceLinkedRoleDeletionStatus" 


-- | <p>Retrieves information about the specified IAM user, including the user's creation date, path, unique ID, and ARN.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID used to sign the request to this API.</p>
getUser :: forall eff. GetUserRequest -> Aff (exception :: EXCEPTION | eff) GetUserResponse
getUser = Request.request serviceName "getUser" 


-- | <p>Retrieves the specified inline policy document that is embedded in the specified IAM user.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>An IAM user can also have managed policies attached to it. To retrieve a managed policy document that is attached to a user, use <a>GetPolicy</a> to determine the policy's default version, then use <a>GetPolicyVersion</a> to retrieve the policy document.</p> <p>For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
getUserPolicy :: forall eff. GetUserPolicyRequest -> Aff (exception :: EXCEPTION | eff) GetUserPolicyResponse
getUserPolicy = Request.request serviceName "getUserPolicy" 


-- | <p>Returns information about the access key IDs associated with the specified IAM user. If there are none, the action returns an empty list.</p> <p>Although each user is limited to a small number of keys, you can still paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>If the <code>UserName</code> field is not specified, the UserName is determined implicitly based on the AWS access key ID used to sign the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p> <note> <p>To ensure the security of your AWS account, the secret access key is accessible only during key and user creation.</p> </note>
listAccessKeys :: forall eff. ListAccessKeysRequest -> Aff (exception :: EXCEPTION | eff) ListAccessKeysResponse
listAccessKeys = Request.request serviceName "listAccessKeys" 


-- | <p>Lists the account alias associated with the AWS account (Note: you can have only one). For information about using an AWS account alias, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html">Using an Alias for Your AWS Account ID</a> in the <i>IAM User Guide</i>.</p>
listAccountAliases :: forall eff. ListAccountAliasesRequest -> Aff (exception :: EXCEPTION | eff) ListAccountAliasesResponse
listAccountAliases = Request.request serviceName "listAccountAliases" 


-- | <p>Lists all managed policies that are attached to the specified IAM group.</p> <p>An IAM group can also have inline policies embedded with it. To list the inline policies for a group, use the <a>ListGroupPolicies</a> API. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. You can use the <code>PathPrefix</code> parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the action returns an empty list.</p>
listAttachedGroupPolicies :: forall eff. ListAttachedGroupPoliciesRequest -> Aff (exception :: EXCEPTION | eff) ListAttachedGroupPoliciesResponse
listAttachedGroupPolicies = Request.request serviceName "listAttachedGroupPolicies" 


-- | <p>Lists all managed policies that are attached to the specified IAM role.</p> <p>An IAM role can also have inline policies embedded with it. To list the inline policies for a role, use the <a>ListRolePolicies</a> API. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. You can use the <code>PathPrefix</code> parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified role (or none that match the specified path prefix), the action returns an empty list.</p>
listAttachedRolePolicies :: forall eff. ListAttachedRolePoliciesRequest -> Aff (exception :: EXCEPTION | eff) ListAttachedRolePoliciesResponse
listAttachedRolePolicies = Request.request serviceName "listAttachedRolePolicies" 


-- | <p>Lists all managed policies that are attached to the specified IAM user.</p> <p>An IAM user can also have inline policies embedded with it. To list the inline policies for a user, use the <a>ListUserPolicies</a> API. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. You can use the <code>PathPrefix</code> parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the action returns an empty list.</p>
listAttachedUserPolicies :: forall eff. ListAttachedUserPoliciesRequest -> Aff (exception :: EXCEPTION | eff) ListAttachedUserPoliciesResponse
listAttachedUserPolicies = Request.request serviceName "listAttachedUserPolicies" 


-- | <p>Lists all IAM users, groups, and roles that the specified managed policy is attached to.</p> <p>You can use the optional <code>EntityFilter</code> parameter to limit the results to a particular type of entity (users, groups, or roles). For example, to list only the roles that are attached to the specified policy, set <code>EntityFilter</code> to <code>Role</code>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listEntitiesForPolicy :: forall eff. ListEntitiesForPolicyRequest -> Aff (exception :: EXCEPTION | eff) ListEntitiesForPolicyResponse
listEntitiesForPolicy = Request.request serviceName "listEntitiesForPolicy" 


-- | <p>Lists the names of the inline policies that are embedded in the specified IAM group.</p> <p>An IAM group can also have managed policies attached to it. To list the managed policies that are attached to a group, use <a>ListAttachedGroupPolicies</a>. For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. If there are no inline policies embedded with the specified group, the action returns an empty list.</p>
listGroupPolicies :: forall eff. ListGroupPoliciesRequest -> Aff (exception :: EXCEPTION | eff) ListGroupPoliciesResponse
listGroupPolicies = Request.request serviceName "listGroupPolicies" 


-- | <p>Lists the IAM groups that have the specified path prefix.</p> <p> You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listGroups :: forall eff. ListGroupsRequest -> Aff (exception :: EXCEPTION | eff) ListGroupsResponse
listGroups = Request.request serviceName "listGroups" 


-- | <p>Lists the IAM groups that the specified IAM user belongs to.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listGroupsForUser :: forall eff. ListGroupsForUserRequest -> Aff (exception :: EXCEPTION | eff) ListGroupsForUserResponse
listGroupsForUser = Request.request serviceName "listGroupsForUser" 


-- | <p>Lists the instance profiles that have the specified path prefix. If there are none, the action returns an empty list. For more information about instance profiles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listInstanceProfiles :: forall eff. ListInstanceProfilesRequest -> Aff (exception :: EXCEPTION | eff) ListInstanceProfilesResponse
listInstanceProfiles = Request.request serviceName "listInstanceProfiles" 


-- | <p>Lists the instance profiles that have the specified associated IAM role. If there are none, the action returns an empty list. For more information about instance profiles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listInstanceProfilesForRole :: forall eff. ListInstanceProfilesForRoleRequest -> Aff (exception :: EXCEPTION | eff) ListInstanceProfilesForRoleResponse
listInstanceProfilesForRole = Request.request serviceName "listInstanceProfilesForRole" 


-- | <p>Lists the MFA devices for an IAM user. If the request includes a IAM user name, then this action lists all the MFA devices associated with the specified user. If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request for this API.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listMFADevices :: forall eff. ListMFADevicesRequest -> Aff (exception :: EXCEPTION | eff) ListMFADevicesResponse
listMFADevices = Request.request serviceName "listMFADevices" 


-- | <p>Lists information about the IAM OpenID Connect (OIDC) provider resource objects defined in the AWS account.</p>
listOpenIDConnectProviders :: forall eff. ListOpenIDConnectProvidersRequest -> Aff (exception :: EXCEPTION | eff) ListOpenIDConnectProvidersResponse
listOpenIDConnectProviders = Request.request serviceName "listOpenIDConnectProviders" 


-- | <p>Lists all the managed policies that are available in your AWS account, including your own customer-defined managed policies and all AWS managed policies.</p> <p>You can filter the list of policies that is returned using the optional <code>OnlyAttached</code>, <code>Scope</code>, and <code>PathPrefix</code> parameters. For example, to list only the customer managed policies in your AWS account, set <code>Scope</code> to <code>Local</code>. To list only AWS managed policies, set <code>Scope</code> to <code>AWS</code>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>For more information about managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
listPolicies :: forall eff. ListPoliciesRequest -> Aff (exception :: EXCEPTION | eff) ListPoliciesResponse
listPolicies = Request.request serviceName "listPolicies" 


-- | <p>Lists information about the versions of the specified managed policy, including the version that is currently set as the policy's default version.</p> <p>For more information about managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
listPolicyVersions :: forall eff. ListPolicyVersionsRequest -> Aff (exception :: EXCEPTION | eff) ListPolicyVersionsResponse
listPolicyVersions = Request.request serviceName "listPolicyVersions" 


-- | <p>Lists the names of the inline policies that are embedded in the specified IAM role.</p> <p>An IAM role can also have managed policies attached to it. To list the managed policies that are attached to a role, use <a>ListAttachedRolePolicies</a>. For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. If there are no inline policies embedded with the specified role, the action returns an empty list.</p>
listRolePolicies :: forall eff. ListRolePoliciesRequest -> Aff (exception :: EXCEPTION | eff) ListRolePoliciesResponse
listRolePolicies = Request.request serviceName "listRolePolicies" 


-- | <p>Lists the IAM roles that have the specified path prefix. If there are none, the action returns an empty list. For more information about roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listRoles :: forall eff. ListRolesRequest -> Aff (exception :: EXCEPTION | eff) ListRolesResponse
listRoles = Request.request serviceName "listRoles" 


-- | <p>Lists the SAML provider resource objects defined in IAM in the account.</p> <note> <p> This operation requires <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note>
listSAMLProviders :: forall eff. ListSAMLProvidersRequest -> Aff (exception :: EXCEPTION | eff) ListSAMLProvidersResponse
listSAMLProviders = Request.request serviceName "listSAMLProviders" 


-- | <p>Returns information about the SSH public keys associated with the specified IAM user. If there are none, the action returns an empty list.</p> <p>The SSH public keys returned by this action are used only for authenticating the IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p> <p>Although each user is limited to a small number of keys, you can still paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listSSHPublicKeys :: forall eff. ListSSHPublicKeysRequest -> Aff (exception :: EXCEPTION | eff) ListSSHPublicKeysResponse
listSSHPublicKeys = Request.request serviceName "listSSHPublicKeys" 


-- | <p>Lists the server certificates stored in IAM that have the specified path prefix. If none exist, the action returns an empty list.</p> <p> You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>For more information about working with server certificates, including a list of AWS services that can use the server certificates that you manage with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>.</p>
listServerCertificates :: forall eff. ListServerCertificatesRequest -> Aff (exception :: EXCEPTION | eff) ListServerCertificatesResponse
listServerCertificates = Request.request serviceName "listServerCertificates" 


-- | <p>Returns information about the service-specific credentials associated with the specified IAM user. If there are none, the action returns an empty list. The service-specific credentials returned by this action are used only for authenticating the IAM user to a specific service. For more information about using service-specific credentials to authenticate to an AWS service, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-gc.html">Set Up service-specific credentials</a> in the AWS CodeCommit User Guide.</p>
listServiceSpecificCredentials :: forall eff. ListServiceSpecificCredentialsRequest -> Aff (exception :: EXCEPTION | eff) ListServiceSpecificCredentialsResponse
listServiceSpecificCredentials = Request.request serviceName "listServiceSpecificCredentials" 


-- | <p>Returns information about the signing certificates associated with the specified IAM user. If there are none, the action returns an empty list.</p> <p>Although each user is limited to a small number of signing certificates, you can still paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>If the <code>UserName</code> field is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request for this API. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p>
listSigningCertificates :: forall eff. ListSigningCertificatesRequest -> Aff (exception :: EXCEPTION | eff) ListSigningCertificatesResponse
listSigningCertificates = Request.request serviceName "listSigningCertificates" 


-- | <p>Lists the names of the inline policies embedded in the specified IAM user.</p> <p>An IAM user can also have managed policies attached to it. To list the managed policies that are attached to a user, use <a>ListAttachedUserPolicies</a>. For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. If there are no inline policies embedded with the specified user, the action returns an empty list.</p>
listUserPolicies :: forall eff. ListUserPoliciesRequest -> Aff (exception :: EXCEPTION | eff) ListUserPoliciesResponse
listUserPolicies = Request.request serviceName "listUserPolicies" 


-- | <p>Lists the IAM users that have the specified path prefix. If no path prefix is specified, the action returns all users in the AWS account. If there are none, the action returns an empty list.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listUsers :: forall eff. ListUsersRequest -> Aff (exception :: EXCEPTION | eff) ListUsersResponse
listUsers = Request.request serviceName "listUsers" 


-- | <p>Lists the virtual MFA devices defined in the AWS account by assignment status. If you do not specify an assignment status, the action returns a list of all virtual MFA devices. Assignment status can be <code>Assigned</code>, <code>Unassigned</code>, or <code>Any</code>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
listVirtualMFADevices :: forall eff. ListVirtualMFADevicesRequest -> Aff (exception :: EXCEPTION | eff) ListVirtualMFADevicesResponse
listVirtualMFADevices = Request.request serviceName "listVirtualMFADevices" 


-- | <p>Adds or updates an inline policy document that is embedded in the specified IAM group.</p> <p>A user can also have managed policies attached to it. To attach a managed policy to a group, use <a>AttachGroupPolicy</a>. To create a new managed policy, use <a>CreatePolicy</a>. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For information about limits on the number of inline policies that you can embed in a group, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because policy documents can be large, you should use POST rather than GET when calling <code>PutGroupPolicy</code>. For general information about using the Query API with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>
putGroupPolicy :: forall eff. PutGroupPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
putGroupPolicy = Request.request serviceName "putGroupPolicy" 


-- | <p>Adds or updates an inline policy document that is embedded in the specified IAM role.</p> <p>When you embed an inline policy in a role, the inline policy is used as part of the role's access (permissions) policy. The role's trust policy is created at the same time as the role, using <a>CreateRole</a>. You can update a role's trust policy using <a>UpdateAssumeRolePolicy</a>. For more information about IAM roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html">Using Roles to Delegate Permissions and Federate Identities</a>.</p> <p>A role can also have a managed policy attached to it. To attach a managed policy to a role, use <a>AttachRolePolicy</a>. To create a new managed policy, use <a>CreatePolicy</a>. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For information about limits on the number of inline policies that you can embed with a role, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because policy documents can be large, you should use POST rather than GET when calling <code>PutRolePolicy</code>. For general information about using the Query API with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>
putRolePolicy :: forall eff. PutRolePolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
putRolePolicy = Request.request serviceName "putRolePolicy" 


-- | <p>Adds or updates an inline policy document that is embedded in the specified IAM user.</p> <p>An IAM user can also have a managed policy attached to it. To attach a managed policy to a user, use <a>AttachUserPolicy</a>. To create a new managed policy, use <a>CreatePolicy</a>. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For information about limits on the number of inline policies that you can embed in a user, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because policy documents can be large, you should use POST rather than GET when calling <code>PutUserPolicy</code>. For general information about using the Query API with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>
putUserPolicy :: forall eff. PutUserPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
putUserPolicy = Request.request serviceName "putUserPolicy" 


-- | <p>Removes the specified client ID (also known as audience) from the list of client IDs registered for the specified IAM OpenID Connect (OIDC) provider resource object.</p> <p>This action is idempotent; it does not fail or return an error if you try to remove a client ID that does not exist.</p>
removeClientIDFromOpenIDConnectProvider :: forall eff. RemoveClientIDFromOpenIDConnectProviderRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
removeClientIDFromOpenIDConnectProvider = Request.request serviceName "removeClientIDFromOpenIDConnectProvider" 


-- | <p>Removes the specified IAM role from the specified EC2 instance profile.</p> <important> <p>Make sure you do not have any Amazon EC2 instances running with the role you are about to remove from the instance profile. Removing a role from an instance profile that is associated with a running instance might break any applications running on the instance.</p> </important> <p> For more information about IAM roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>. For more information about instance profiles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p>
removeRoleFromInstanceProfile :: forall eff. RemoveRoleFromInstanceProfileRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
removeRoleFromInstanceProfile = Request.request serviceName "removeRoleFromInstanceProfile" 


-- | <p>Removes the specified user from the specified group.</p>
removeUserFromGroup :: forall eff. RemoveUserFromGroupRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
removeUserFromGroup = Request.request serviceName "removeUserFromGroup" 


-- | <p>Resets the password for a service-specific credential. The new password is AWS generated and cryptographically strong. It cannot be configured by the user. Resetting the password immediately invalidates the previous password associated with this user.</p>
resetServiceSpecificCredential :: forall eff. ResetServiceSpecificCredentialRequest -> Aff (exception :: EXCEPTION | eff) ResetServiceSpecificCredentialResponse
resetServiceSpecificCredential = Request.request serviceName "resetServiceSpecificCredential" 


-- | <p>Synchronizes the specified MFA device with its IAM resource object on the AWS servers.</p> <p>For more information about creating and working with virtual MFA devices, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html">Using a Virtual MFA Device</a> in the <i>IAM User Guide</i>.</p>
resyncMFADevice :: forall eff. ResyncMFADeviceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
resyncMFADevice = Request.request serviceName "resyncMFADevice" 


-- | <p>Sets the specified version of the specified policy as the policy's default (operative) version.</p> <p>This action affects all users, groups, and roles that the policy is attached to. To list the users, groups, and roles that the policy is attached to, use the <a>ListEntitiesForPolicy</a> API.</p> <p>For information about managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>
setDefaultPolicyVersion :: forall eff. SetDefaultPolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
setDefaultPolicyVersion = Request.request serviceName "setDefaultPolicyVersion" 


-- | <p>Simulate how a set of IAM policies and optionally a resource-based policy works with a list of API actions and AWS resources to determine the policies' effective permissions. The policies are provided as strings.</p> <p>The simulation does not perform the API actions; it only checks the authorization to determine if the simulated policies allow or deny the actions.</p> <p>If you want to simulate existing policies attached to an IAM user, group, or role, use <a>SimulatePrincipalPolicy</a> instead.</p> <p>Context keys are variables maintained by AWS and its services that provide details about the context of an API query request. You can use the <code>Condition</code> element of an IAM policy to evaluate context keys. To get the list of context keys that the policies require for correct simulation, use <a>GetContextKeysForCustomPolicy</a>.</p> <p>If the output is long, you can use <code>MaxItems</code> and <code>Marker</code> parameters to paginate the results.</p>
simulateCustomPolicy :: forall eff. SimulateCustomPolicyRequest -> Aff (exception :: EXCEPTION | eff) SimulatePolicyResponse
simulateCustomPolicy = Request.request serviceName "simulateCustomPolicy" 


-- | <p>Simulate how a set of IAM policies attached to an IAM entity works with a list of API actions and AWS resources to determine the policies' effective permissions. The entity can be an IAM user, group, or role. If you specify a user, then the simulation also includes all of the policies that are attached to groups that the user belongs to .</p> <p>You can optionally include a list of one or more additional policies specified as strings to include in the simulation. If you want to simulate only policies specified as strings, use <a>SimulateCustomPolicy</a> instead.</p> <p>You can also optionally include one resource-based policy to be evaluated with each of the resources included in the simulation.</p> <p>The simulation does not perform the API actions, it only checks the authorization to determine if the simulated policies allow or deny the actions.</p> <p> <b>Note:</b> This API discloses information about the permissions granted to other users. If you do not want users to see other user's permissions, then consider allowing them to use <a>SimulateCustomPolicy</a> instead.</p> <p>Context keys are variables maintained by AWS and its services that provide details about the context of an API query request. You can use the <code>Condition</code> element of an IAM policy to evaluate context keys. To get the list of context keys that the policies require for correct simulation, use <a>GetContextKeysForPrincipalPolicy</a>.</p> <p>If the output is long, you can use the <code>MaxItems</code> and <code>Marker</code> parameters to paginate the results.</p>
simulatePrincipalPolicy :: forall eff. SimulatePrincipalPolicyRequest -> Aff (exception :: EXCEPTION | eff) SimulatePolicyResponse
simulatePrincipalPolicy = Request.request serviceName "simulatePrincipalPolicy" 


-- | <p>Changes the status of the specified access key from Active to Inactive, or vice versa. This action can be used to disable a user's key as part of a key rotation work flow.</p> <p>If the <code>UserName</code> field is not specified, the UserName is determined implicitly based on the AWS access key ID used to sign the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p> <p>For information about rotating keys, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/ManagingCredentials.html">Managing Keys and Certificates</a> in the <i>IAM User Guide</i>.</p>
updateAccessKey :: forall eff. UpdateAccessKeyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateAccessKey = Request.request serviceName "updateAccessKey" 


-- | <p>Updates the password policy settings for the AWS account.</p> <note> <p>This action does not support partial updates. No parameters are required, but if you do not specify a parameter, that parameter's value reverts to its default value. See the <b>Request Parameters</b> section for each parameter's default value.</p> </note> <p> For more information about using a password policy, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html">Managing an IAM Password Policy</a> in the <i>IAM User Guide</i>.</p>
updateAccountPasswordPolicy :: forall eff. UpdateAccountPasswordPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateAccountPasswordPolicy = Request.request serviceName "updateAccountPasswordPolicy" 


-- | <p>Updates the policy that grants an IAM entity permission to assume a role. This is typically referred to as the "role trust policy". For more information about roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html">Using Roles to Delegate Permissions and Federate Identities</a>.</p>
updateAssumeRolePolicy :: forall eff. UpdateAssumeRolePolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateAssumeRolePolicy = Request.request serviceName "updateAssumeRolePolicy" 


-- | <p>Updates the name and/or the path of the specified IAM group.</p> <important> <p> You should understand the implications of changing a group's path or name. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_WorkingWithGroupsAndUsers.html">Renaming Users and Groups</a> in the <i>IAM User Guide</i>.</p> </important> <note> <p>To change an IAM group name the requester must have appropriate permissions on both the source object and the target object. For example, to change "Managers" to "MGRs", the entity making the request must have permission on both "Managers" and "MGRs", or must have permission on all (*). For more information about permissions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html">Permissions and Policies</a>. </p> </note>
updateGroup :: forall eff. UpdateGroupRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateGroup = Request.request serviceName "updateGroup" 


-- | <p>Changes the password for the specified IAM user.</p> <p>IAM users can change their own passwords by calling <a>ChangePassword</a>. For more information about modifying passwords, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html">Managing Passwords</a> in the <i>IAM User Guide</i>.</p>
updateLoginProfile :: forall eff. UpdateLoginProfileRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateLoginProfile = Request.request serviceName "updateLoginProfile" 


-- | <p>Replaces the existing list of server certificate thumbprints associated with an OpenID Connect (OIDC) provider resource object with a new list of thumbprints.</p> <p>The list that you pass with this action completely replaces the existing list of thumbprints. (The lists are not merged.)</p> <p>Typically, you need to update a thumbprint only when the identity provider's certificate changes, which occurs rarely. However, if the provider's certificate <i>does</i> change, any attempt to assume an IAM role that specifies the OIDC provider as a principal fails until the certificate thumbprint is updated.</p> <note> <p>Because trust for the OIDC provider is ultimately derived from the provider's certificate and is validated by the thumbprint, it is a best practice to limit access to the <code>UpdateOpenIDConnectProviderThumbprint</code> action to highly-privileged users.</p> </note>
updateOpenIDConnectProviderThumbprint :: forall eff. UpdateOpenIDConnectProviderThumbprintRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateOpenIDConnectProviderThumbprint = Request.request serviceName "updateOpenIDConnectProviderThumbprint" 


-- | <p>Modifies the description of a role.</p>
updateRoleDescription :: forall eff. UpdateRoleDescriptionRequest -> Aff (exception :: EXCEPTION | eff) UpdateRoleDescriptionResponse
updateRoleDescription = Request.request serviceName "updateRoleDescription" 


-- | <p>Updates the metadata document for an existing SAML provider resource object.</p> <note> <p>This operation requires <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note>
updateSAMLProvider :: forall eff. UpdateSAMLProviderRequest -> Aff (exception :: EXCEPTION | eff) UpdateSAMLProviderResponse
updateSAMLProvider = Request.request serviceName "updateSAMLProvider" 


-- | <p>Sets the status of an IAM user's SSH public key to active or inactive. SSH public keys that are inactive cannot be used for authentication. This action can be used to disable a user's SSH public key as part of a key rotation work flow.</p> <p>The SSH public key affected by this action is used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>
updateSSHPublicKey :: forall eff. UpdateSSHPublicKeyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateSSHPublicKey = Request.request serviceName "updateSSHPublicKey" 


-- | <p>Updates the name and/or the path of the specified server certificate stored in IAM.</p> <p>For more information about working with server certificates, including a list of AWS services that can use the server certificates that you manage with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>.</p> <important> <p>You should understand the implications of changing a server certificate's path or name. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs_manage.html#RenamingServerCerts">Renaming a Server Certificate</a> in the <i>IAM User Guide</i>.</p> </important> <note> <p>To change a server certificate name the requester must have appropriate permissions on both the source object and the target object. For example, to change the name from "ProductionCert" to "ProdCert", the entity making the request must have permission on "ProductionCert" and "ProdCert", or must have permission on all (*). For more information about permissions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access Management</a> in the <i>IAM User Guide</i>.</p> </note>
updateServerCertificate :: forall eff. UpdateServerCertificateRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateServerCertificate = Request.request serviceName "updateServerCertificate" 


-- | <p>Sets the status of a service-specific credential to <code>Active</code> or <code>Inactive</code>. Service-specific credentials that are inactive cannot be used for authentication to the service. This action can be used to disable a user’s service-specific credential as part of a credential rotation work flow.</p>
updateServiceSpecificCredential :: forall eff. UpdateServiceSpecificCredentialRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateServiceSpecificCredential = Request.request serviceName "updateServiceSpecificCredential" 


-- | <p>Changes the status of the specified user signing certificate from active to disabled, or vice versa. This action can be used to disable an IAM user's signing certificate as part of a certificate rotation work flow.</p> <p>If the <code>UserName</code> field is not specified, the UserName is determined implicitly based on the AWS access key ID used to sign the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p>
updateSigningCertificate :: forall eff. UpdateSigningCertificateRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateSigningCertificate = Request.request serviceName "updateSigningCertificate" 


-- | <p>Updates the name and/or the path of the specified IAM user.</p> <important> <p> You should understand the implications of changing an IAM user's path or name. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_renaming">Renaming an IAM User</a> and <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_rename.html">Renaming an IAM Group</a> in the <i>IAM User Guide</i>.</p> </important> <note> <p> To change a user name the requester must have appropriate permissions on both the source object and the target object. For example, to change Bob to Robert, the entity making the request must have permission on Bob and Robert, or must have permission on all (*). For more information about permissions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html">Permissions and Policies</a>. </p> </note>
updateUser :: forall eff. UpdateUserRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateUser = Request.request serviceName "updateUser" 


-- | <p>Uploads an SSH public key and associates it with the specified IAM user.</p> <p>The SSH public key uploaded by this action can be used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>
uploadSSHPublicKey :: forall eff. UploadSSHPublicKeyRequest -> Aff (exception :: EXCEPTION | eff) UploadSSHPublicKeyResponse
uploadSSHPublicKey = Request.request serviceName "uploadSSHPublicKey" 


-- | <p>Uploads a server certificate entity for the AWS account. The server certificate entity includes a public key certificate, a private key, and an optional certificate chain, which should all be PEM-encoded.</p> <p>We recommend that you use <a href="https://aws.amazon.com/certificate-manager/">AWS Certificate Manager</a> to provision, manage, and deploy your server certificates. With ACM you can request a certificate, deploy it to AWS resources, and let ACM handle certificate renewals for you. Certificates provided by ACM are free. For more information about using ACM, see the <a href="http://docs.aws.amazon.com/acm/latest/userguide/">AWS Certificate Manager User Guide</a>.</p> <p>For more information about working with server certificates, including a list of AWS services that can use the server certificates that you manage with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>.</p> <p>For information about the number of server certificates you can upload, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html">Limitations on IAM Entities and Objects</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because the body of the public key certificate, private key, and the certificate chain can be large, you should use POST rather than GET when calling <code>UploadServerCertificate</code>. For information about setting up signatures and authorization through the API, go to <a href="http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html">Signing AWS API Requests</a> in the <i>AWS General Reference</i>. For general information about using the Query API with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html">Calling the API by Making HTTP Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>
uploadServerCertificate :: forall eff. UploadServerCertificateRequest -> Aff (exception :: EXCEPTION | eff) UploadServerCertificateResponse
uploadServerCertificate = Request.request serviceName "uploadServerCertificate" 


-- | <p>Uploads an X.509 signing certificate and associates it with the specified IAM user. Some AWS services use X.509 signing certificates to validate requests that are signed with a corresponding private key. When you upload the certificate, its default status is <code>Active</code>.</p> <p>If the <code>UserName</code> field is not specified, the IAM user name is determined implicitly based on the AWS access key ID used to sign the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p> <note> <p>Because the body of a X.509 certificate can be large, you should use POST rather than GET when calling <code>UploadSigningCertificate</code>. For information about setting up signatures and authorization through the API, go to <a href="http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html">Signing AWS API Requests</a> in the <i>AWS General Reference</i>. For general information about using the Query API with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>
uploadSigningCertificate :: forall eff. UploadSigningCertificateRequest -> Aff (exception :: EXCEPTION | eff) UploadSigningCertificateResponse
uploadSigningCertificate = Request.request serviceName "uploadSigningCertificate" 


-- | <p>Contains information about an AWS access key.</p> <p> This data type is used as a response element in the <a>CreateAccessKey</a> and <a>ListAccessKeys</a> actions. </p> <note> <p>The <code>SecretAccessKey</code> value is returned only in response to <a>CreateAccessKey</a>. You can get a secret access key only when you first create an access key; you cannot recover the secret access key later. If you lose a secret access key, you must create a new access key.</p> </note>
newtype AccessKey = AccessKey 
  { "UserName" :: (UserNameType')
  , "AccessKeyId" :: (AccessKeyIdType')
  , "Status" :: (StatusType')
  , "SecretAccessKey" :: (AccessKeySecretType')
  , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType')
  }
derive instance newtypeAccessKey :: Newtype AccessKey _
derive instance repGenericAccessKey :: Generic AccessKey _
instance showAccessKey :: Show AccessKey where
  show = genericShow
instance decodeAccessKey :: Decode AccessKey where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccessKey :: Encode AccessKey where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AccessKey from required parameters
newAccessKey :: AccessKeyIdType' -> AccessKeySecretType' -> StatusType' -> UserNameType' -> AccessKey
newAccessKey _AccessKeyId _SecretAccessKey _Status _UserName = AccessKey { "AccessKeyId": _AccessKeyId, "SecretAccessKey": _SecretAccessKey, "Status": _Status, "UserName": _UserName, "CreateDate": (NullOrUndefined Nothing) }

-- | Constructs AccessKey's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccessKey' :: AccessKeyIdType' -> AccessKeySecretType' -> StatusType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "AccessKeyId" :: (AccessKeyIdType') , "Status" :: (StatusType') , "SecretAccessKey" :: (AccessKeySecretType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') } -> {"UserName" :: (UserNameType') , "AccessKeyId" :: (AccessKeyIdType') , "Status" :: (StatusType') , "SecretAccessKey" :: (AccessKeySecretType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') } ) -> AccessKey
newAccessKey' _AccessKeyId _SecretAccessKey _Status _UserName customize = (AccessKey <<< customize) { "AccessKeyId": _AccessKeyId, "SecretAccessKey": _SecretAccessKey, "Status": _Status, "UserName": _UserName, "CreateDate": (NullOrUndefined Nothing) }



-- | <p>Contains information about the last time an AWS access key was used.</p> <p>This data type is used as a response element in the <a>GetAccessKeyLastUsed</a> action.</p>
newtype AccessKeyLastUsed = AccessKeyLastUsed 
  { "LastUsedDate" :: (DateType')
  , "ServiceName" :: (StringType')
  , "Region" :: (StringType')
  }
derive instance newtypeAccessKeyLastUsed :: Newtype AccessKeyLastUsed _
derive instance repGenericAccessKeyLastUsed :: Generic AccessKeyLastUsed _
instance showAccessKeyLastUsed :: Show AccessKeyLastUsed where
  show = genericShow
instance decodeAccessKeyLastUsed :: Decode AccessKeyLastUsed where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccessKeyLastUsed :: Encode AccessKeyLastUsed where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AccessKeyLastUsed from required parameters
newAccessKeyLastUsed :: DateType' -> StringType' -> StringType' -> AccessKeyLastUsed
newAccessKeyLastUsed _LastUsedDate _Region _ServiceName = AccessKeyLastUsed { "LastUsedDate": _LastUsedDate, "Region": _Region, "ServiceName": _ServiceName }

-- | Constructs AccessKeyLastUsed's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccessKeyLastUsed' :: DateType' -> StringType' -> StringType' -> ( { "LastUsedDate" :: (DateType') , "ServiceName" :: (StringType') , "Region" :: (StringType') } -> {"LastUsedDate" :: (DateType') , "ServiceName" :: (StringType') , "Region" :: (StringType') } ) -> AccessKeyLastUsed
newAccessKeyLastUsed' _LastUsedDate _Region _ServiceName customize = (AccessKeyLastUsed <<< customize) { "LastUsedDate": _LastUsedDate, "Region": _Region, "ServiceName": _ServiceName }



-- | <p>Contains information about an AWS access key, without its secret key.</p> <p>This data type is used as a response element in the <a>ListAccessKeys</a> action.</p>
newtype AccessKeyMetadata = AccessKeyMetadata 
  { "UserName" :: NullOrUndefined.NullOrUndefined (UserNameType')
  , "AccessKeyId" :: NullOrUndefined.NullOrUndefined (AccessKeyIdType')
  , "Status" :: NullOrUndefined.NullOrUndefined (StatusType')
  , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType')
  }
derive instance newtypeAccessKeyMetadata :: Newtype AccessKeyMetadata _
derive instance repGenericAccessKeyMetadata :: Generic AccessKeyMetadata _
instance showAccessKeyMetadata :: Show AccessKeyMetadata where
  show = genericShow
instance decodeAccessKeyMetadata :: Decode AccessKeyMetadata where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccessKeyMetadata :: Encode AccessKeyMetadata where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AccessKeyMetadata from required parameters
newAccessKeyMetadata :: AccessKeyMetadata
newAccessKeyMetadata  = AccessKeyMetadata { "AccessKeyId": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }

-- | Constructs AccessKeyMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccessKeyMetadata' :: ( { "UserName" :: NullOrUndefined.NullOrUndefined (UserNameType') , "AccessKeyId" :: NullOrUndefined.NullOrUndefined (AccessKeyIdType') , "Status" :: NullOrUndefined.NullOrUndefined (StatusType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') } -> {"UserName" :: NullOrUndefined.NullOrUndefined (UserNameType') , "AccessKeyId" :: NullOrUndefined.NullOrUndefined (AccessKeyIdType') , "Status" :: NullOrUndefined.NullOrUndefined (StatusType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') } ) -> AccessKeyMetadata
newAccessKeyMetadata'  customize = (AccessKeyMetadata <<< customize) { "AccessKeyId": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }



newtype ActionNameListType = ActionNameListType (Array ActionNameType)
derive instance newtypeActionNameListType :: Newtype ActionNameListType _
derive instance repGenericActionNameListType :: Generic ActionNameListType _
instance showActionNameListType :: Show ActionNameListType where
  show = genericShow
instance decodeActionNameListType :: Decode ActionNameListType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeActionNameListType :: Encode ActionNameListType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ActionNameType = ActionNameType String
derive instance newtypeActionNameType :: Newtype ActionNameType _
derive instance repGenericActionNameType :: Generic ActionNameType _
instance showActionNameType :: Show ActionNameType where
  show = genericShow
instance decodeActionNameType :: Decode ActionNameType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeActionNameType :: Encode ActionNameType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AddClientIDToOpenIDConnectProviderRequest = AddClientIDToOpenIDConnectProviderRequest 
  { "OpenIDConnectProviderArn" :: (ArnType')
  , "ClientID" :: (ClientIDType')
  }
derive instance newtypeAddClientIDToOpenIDConnectProviderRequest :: Newtype AddClientIDToOpenIDConnectProviderRequest _
derive instance repGenericAddClientIDToOpenIDConnectProviderRequest :: Generic AddClientIDToOpenIDConnectProviderRequest _
instance showAddClientIDToOpenIDConnectProviderRequest :: Show AddClientIDToOpenIDConnectProviderRequest where
  show = genericShow
instance decodeAddClientIDToOpenIDConnectProviderRequest :: Decode AddClientIDToOpenIDConnectProviderRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAddClientIDToOpenIDConnectProviderRequest :: Encode AddClientIDToOpenIDConnectProviderRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AddClientIDToOpenIDConnectProviderRequest from required parameters
newAddClientIDToOpenIDConnectProviderRequest :: ClientIDType' -> ArnType' -> AddClientIDToOpenIDConnectProviderRequest
newAddClientIDToOpenIDConnectProviderRequest _ClientID _OpenIDConnectProviderArn = AddClientIDToOpenIDConnectProviderRequest { "ClientID": _ClientID, "OpenIDConnectProviderArn": _OpenIDConnectProviderArn }

-- | Constructs AddClientIDToOpenIDConnectProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddClientIDToOpenIDConnectProviderRequest' :: ClientIDType' -> ArnType' -> ( { "OpenIDConnectProviderArn" :: (ArnType') , "ClientID" :: (ClientIDType') } -> {"OpenIDConnectProviderArn" :: (ArnType') , "ClientID" :: (ClientIDType') } ) -> AddClientIDToOpenIDConnectProviderRequest
newAddClientIDToOpenIDConnectProviderRequest' _ClientID _OpenIDConnectProviderArn customize = (AddClientIDToOpenIDConnectProviderRequest <<< customize) { "ClientID": _ClientID, "OpenIDConnectProviderArn": _OpenIDConnectProviderArn }



newtype AddRoleToInstanceProfileRequest = AddRoleToInstanceProfileRequest 
  { "InstanceProfileName" :: (InstanceProfileNameType')
  , "RoleName" :: (RoleNameType')
  }
derive instance newtypeAddRoleToInstanceProfileRequest :: Newtype AddRoleToInstanceProfileRequest _
derive instance repGenericAddRoleToInstanceProfileRequest :: Generic AddRoleToInstanceProfileRequest _
instance showAddRoleToInstanceProfileRequest :: Show AddRoleToInstanceProfileRequest where
  show = genericShow
instance decodeAddRoleToInstanceProfileRequest :: Decode AddRoleToInstanceProfileRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAddRoleToInstanceProfileRequest :: Encode AddRoleToInstanceProfileRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AddRoleToInstanceProfileRequest from required parameters
newAddRoleToInstanceProfileRequest :: InstanceProfileNameType' -> RoleNameType' -> AddRoleToInstanceProfileRequest
newAddRoleToInstanceProfileRequest _InstanceProfileName _RoleName = AddRoleToInstanceProfileRequest { "InstanceProfileName": _InstanceProfileName, "RoleName": _RoleName }

-- | Constructs AddRoleToInstanceProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddRoleToInstanceProfileRequest' :: InstanceProfileNameType' -> RoleNameType' -> ( { "InstanceProfileName" :: (InstanceProfileNameType') , "RoleName" :: (RoleNameType') } -> {"InstanceProfileName" :: (InstanceProfileNameType') , "RoleName" :: (RoleNameType') } ) -> AddRoleToInstanceProfileRequest
newAddRoleToInstanceProfileRequest' _InstanceProfileName _RoleName customize = (AddRoleToInstanceProfileRequest <<< customize) { "InstanceProfileName": _InstanceProfileName, "RoleName": _RoleName }



newtype AddUserToGroupRequest = AddUserToGroupRequest 
  { "GroupName" :: (GroupNameType')
  , "UserName" :: (ExistingUserNameType')
  }
derive instance newtypeAddUserToGroupRequest :: Newtype AddUserToGroupRequest _
derive instance repGenericAddUserToGroupRequest :: Generic AddUserToGroupRequest _
instance showAddUserToGroupRequest :: Show AddUserToGroupRequest where
  show = genericShow
instance decodeAddUserToGroupRequest :: Decode AddUserToGroupRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAddUserToGroupRequest :: Encode AddUserToGroupRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AddUserToGroupRequest from required parameters
newAddUserToGroupRequest :: GroupNameType' -> ExistingUserNameType' -> AddUserToGroupRequest
newAddUserToGroupRequest _GroupName _UserName = AddUserToGroupRequest { "GroupName": _GroupName, "UserName": _UserName }

-- | Constructs AddUserToGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddUserToGroupRequest' :: GroupNameType' -> ExistingUserNameType' -> ( { "GroupName" :: (GroupNameType') , "UserName" :: (ExistingUserNameType') } -> {"GroupName" :: (GroupNameType') , "UserName" :: (ExistingUserNameType') } ) -> AddUserToGroupRequest
newAddUserToGroupRequest' _GroupName _UserName customize = (AddUserToGroupRequest <<< customize) { "GroupName": _GroupName, "UserName": _UserName }



newtype ArnListType = ArnListType (Array ArnType')
derive instance newtypeArnListType :: Newtype ArnListType _
derive instance repGenericArnListType :: Generic ArnListType _
instance showArnListType :: Show ArnListType where
  show = genericShow
instance decodeArnListType :: Decode ArnListType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeArnListType :: Encode ArnListType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AttachGroupPolicyRequest = AttachGroupPolicyRequest 
  { "GroupName" :: (GroupNameType')
  , "PolicyArn" :: (ArnType')
  }
derive instance newtypeAttachGroupPolicyRequest :: Newtype AttachGroupPolicyRequest _
derive instance repGenericAttachGroupPolicyRequest :: Generic AttachGroupPolicyRequest _
instance showAttachGroupPolicyRequest :: Show AttachGroupPolicyRequest where
  show = genericShow
instance decodeAttachGroupPolicyRequest :: Decode AttachGroupPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttachGroupPolicyRequest :: Encode AttachGroupPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AttachGroupPolicyRequest from required parameters
newAttachGroupPolicyRequest :: GroupNameType' -> ArnType' -> AttachGroupPolicyRequest
newAttachGroupPolicyRequest _GroupName _PolicyArn = AttachGroupPolicyRequest { "GroupName": _GroupName, "PolicyArn": _PolicyArn }

-- | Constructs AttachGroupPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttachGroupPolicyRequest' :: GroupNameType' -> ArnType' -> ( { "GroupName" :: (GroupNameType') , "PolicyArn" :: (ArnType') } -> {"GroupName" :: (GroupNameType') , "PolicyArn" :: (ArnType') } ) -> AttachGroupPolicyRequest
newAttachGroupPolicyRequest' _GroupName _PolicyArn customize = (AttachGroupPolicyRequest <<< customize) { "GroupName": _GroupName, "PolicyArn": _PolicyArn }



newtype AttachRolePolicyRequest = AttachRolePolicyRequest 
  { "RoleName" :: (RoleNameType')
  , "PolicyArn" :: (ArnType')
  }
derive instance newtypeAttachRolePolicyRequest :: Newtype AttachRolePolicyRequest _
derive instance repGenericAttachRolePolicyRequest :: Generic AttachRolePolicyRequest _
instance showAttachRolePolicyRequest :: Show AttachRolePolicyRequest where
  show = genericShow
instance decodeAttachRolePolicyRequest :: Decode AttachRolePolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttachRolePolicyRequest :: Encode AttachRolePolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AttachRolePolicyRequest from required parameters
newAttachRolePolicyRequest :: ArnType' -> RoleNameType' -> AttachRolePolicyRequest
newAttachRolePolicyRequest _PolicyArn _RoleName = AttachRolePolicyRequest { "PolicyArn": _PolicyArn, "RoleName": _RoleName }

-- | Constructs AttachRolePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttachRolePolicyRequest' :: ArnType' -> RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "PolicyArn" :: (ArnType') } -> {"RoleName" :: (RoleNameType') , "PolicyArn" :: (ArnType') } ) -> AttachRolePolicyRequest
newAttachRolePolicyRequest' _PolicyArn _RoleName customize = (AttachRolePolicyRequest <<< customize) { "PolicyArn": _PolicyArn, "RoleName": _RoleName }



newtype AttachUserPolicyRequest = AttachUserPolicyRequest 
  { "UserName" :: (UserNameType')
  , "PolicyArn" :: (ArnType')
  }
derive instance newtypeAttachUserPolicyRequest :: Newtype AttachUserPolicyRequest _
derive instance repGenericAttachUserPolicyRequest :: Generic AttachUserPolicyRequest _
instance showAttachUserPolicyRequest :: Show AttachUserPolicyRequest where
  show = genericShow
instance decodeAttachUserPolicyRequest :: Decode AttachUserPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttachUserPolicyRequest :: Encode AttachUserPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AttachUserPolicyRequest from required parameters
newAttachUserPolicyRequest :: ArnType' -> UserNameType' -> AttachUserPolicyRequest
newAttachUserPolicyRequest _PolicyArn _UserName = AttachUserPolicyRequest { "PolicyArn": _PolicyArn, "UserName": _UserName }

-- | Constructs AttachUserPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttachUserPolicyRequest' :: ArnType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "PolicyArn" :: (ArnType') } -> {"UserName" :: (UserNameType') , "PolicyArn" :: (ArnType') } ) -> AttachUserPolicyRequest
newAttachUserPolicyRequest' _PolicyArn _UserName customize = (AttachUserPolicyRequest <<< customize) { "PolicyArn": _PolicyArn, "UserName": _UserName }



-- | <p>Contains information about an attached policy.</p> <p>An attached policy is a managed policy that has been attached to a user, group, or role. This data type is used as a response element in the <a>ListAttachedGroupPolicies</a>, <a>ListAttachedRolePolicies</a>, <a>ListAttachedUserPolicies</a>, and <a>GetAccountAuthorizationDetails</a> actions. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
newtype AttachedPolicy = AttachedPolicy 
  { "PolicyName" :: NullOrUndefined.NullOrUndefined (PolicyNameType')
  , "PolicyArn" :: NullOrUndefined.NullOrUndefined (ArnType')
  }
derive instance newtypeAttachedPolicy :: Newtype AttachedPolicy _
derive instance repGenericAttachedPolicy :: Generic AttachedPolicy _
instance showAttachedPolicy :: Show AttachedPolicy where
  show = genericShow
instance decodeAttachedPolicy :: Decode AttachedPolicy where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttachedPolicy :: Encode AttachedPolicy where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AttachedPolicy from required parameters
newAttachedPolicy :: AttachedPolicy
newAttachedPolicy  = AttachedPolicy { "PolicyArn": (NullOrUndefined Nothing), "PolicyName": (NullOrUndefined Nothing) }

-- | Constructs AttachedPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttachedPolicy' :: ( { "PolicyName" :: NullOrUndefined.NullOrUndefined (PolicyNameType') , "PolicyArn" :: NullOrUndefined.NullOrUndefined (ArnType') } -> {"PolicyName" :: NullOrUndefined.NullOrUndefined (PolicyNameType') , "PolicyArn" :: NullOrUndefined.NullOrUndefined (ArnType') } ) -> AttachedPolicy
newAttachedPolicy'  customize = (AttachedPolicy <<< customize) { "PolicyArn": (NullOrUndefined Nothing), "PolicyName": (NullOrUndefined Nothing) }



newtype BootstrapDatum = BootstrapDatum String
derive instance newtypeBootstrapDatum :: Newtype BootstrapDatum _
derive instance repGenericBootstrapDatum :: Generic BootstrapDatum _
instance showBootstrapDatum :: Show BootstrapDatum where
  show = genericShow
instance decodeBootstrapDatum :: Decode BootstrapDatum where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBootstrapDatum :: Encode BootstrapDatum where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ChangePasswordRequest = ChangePasswordRequest 
  { "OldPassword" :: (PasswordType')
  , "NewPassword" :: (PasswordType')
  }
derive instance newtypeChangePasswordRequest :: Newtype ChangePasswordRequest _
derive instance repGenericChangePasswordRequest :: Generic ChangePasswordRequest _
instance showChangePasswordRequest :: Show ChangePasswordRequest where
  show = genericShow
instance decodeChangePasswordRequest :: Decode ChangePasswordRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeChangePasswordRequest :: Encode ChangePasswordRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ChangePasswordRequest from required parameters
newChangePasswordRequest :: PasswordType' -> PasswordType' -> ChangePasswordRequest
newChangePasswordRequest _NewPassword _OldPassword = ChangePasswordRequest { "NewPassword": _NewPassword, "OldPassword": _OldPassword }

-- | Constructs ChangePasswordRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChangePasswordRequest' :: PasswordType' -> PasswordType' -> ( { "OldPassword" :: (PasswordType') , "NewPassword" :: (PasswordType') } -> {"OldPassword" :: (PasswordType') , "NewPassword" :: (PasswordType') } ) -> ChangePasswordRequest
newChangePasswordRequest' _NewPassword _OldPassword customize = (ChangePasswordRequest <<< customize) { "NewPassword": _NewPassword, "OldPassword": _OldPassword }



newtype ColumnNumber = ColumnNumber Int
derive instance newtypeColumnNumber :: Newtype ColumnNumber _
derive instance repGenericColumnNumber :: Generic ColumnNumber _
instance showColumnNumber :: Show ColumnNumber where
  show = genericShow
instance decodeColumnNumber :: Decode ColumnNumber where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeColumnNumber :: Encode ColumnNumber where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains information about a condition context key. It includes the name of the key and specifies the value (or values, if the context key supports multiple values) to use in the simulation. This information is used when evaluating the <code>Condition</code> elements of the input policies.</p> <p>This data type is used as an input parameter to <code> <a>SimulateCustomPolicy</a> </code> and <code> <a>SimulateCustomPolicy</a> </code>.</p>
newtype ContextEntry = ContextEntry 
  { "ContextKeyName" :: NullOrUndefined.NullOrUndefined (ContextKeyNameType)
  , "ContextKeyValues" :: NullOrUndefined.NullOrUndefined (ContextKeyValueListType)
  , "ContextKeyType" :: NullOrUndefined.NullOrUndefined (ContextKeyTypeEnum)
  }
derive instance newtypeContextEntry :: Newtype ContextEntry _
derive instance repGenericContextEntry :: Generic ContextEntry _
instance showContextEntry :: Show ContextEntry where
  show = genericShow
instance decodeContextEntry :: Decode ContextEntry where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContextEntry :: Encode ContextEntry where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ContextEntry from required parameters
newContextEntry :: ContextEntry
newContextEntry  = ContextEntry { "ContextKeyName": (NullOrUndefined Nothing), "ContextKeyType": (NullOrUndefined Nothing), "ContextKeyValues": (NullOrUndefined Nothing) }

-- | Constructs ContextEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContextEntry' :: ( { "ContextKeyName" :: NullOrUndefined.NullOrUndefined (ContextKeyNameType) , "ContextKeyValues" :: NullOrUndefined.NullOrUndefined (ContextKeyValueListType) , "ContextKeyType" :: NullOrUndefined.NullOrUndefined (ContextKeyTypeEnum) } -> {"ContextKeyName" :: NullOrUndefined.NullOrUndefined (ContextKeyNameType) , "ContextKeyValues" :: NullOrUndefined.NullOrUndefined (ContextKeyValueListType) , "ContextKeyType" :: NullOrUndefined.NullOrUndefined (ContextKeyTypeEnum) } ) -> ContextEntry
newContextEntry'  customize = (ContextEntry <<< customize) { "ContextKeyName": (NullOrUndefined Nothing), "ContextKeyType": (NullOrUndefined Nothing), "ContextKeyValues": (NullOrUndefined Nothing) }



newtype ContextEntryListType = ContextEntryListType (Array ContextEntry)
derive instance newtypeContextEntryListType :: Newtype ContextEntryListType _
derive instance repGenericContextEntryListType :: Generic ContextEntryListType _
instance showContextEntryListType :: Show ContextEntryListType where
  show = genericShow
instance decodeContextEntryListType :: Decode ContextEntryListType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContextEntryListType :: Encode ContextEntryListType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ContextKeyNameType = ContextKeyNameType String
derive instance newtypeContextKeyNameType :: Newtype ContextKeyNameType _
derive instance repGenericContextKeyNameType :: Generic ContextKeyNameType _
instance showContextKeyNameType :: Show ContextKeyNameType where
  show = genericShow
instance decodeContextKeyNameType :: Decode ContextKeyNameType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContextKeyNameType :: Encode ContextKeyNameType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ContextKeyNamesResultListType = ContextKeyNamesResultListType (Array ContextKeyNameType)
derive instance newtypeContextKeyNamesResultListType :: Newtype ContextKeyNamesResultListType _
derive instance repGenericContextKeyNamesResultListType :: Generic ContextKeyNamesResultListType _
instance showContextKeyNamesResultListType :: Show ContextKeyNamesResultListType where
  show = genericShow
instance decodeContextKeyNamesResultListType :: Decode ContextKeyNamesResultListType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContextKeyNamesResultListType :: Encode ContextKeyNamesResultListType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ContextKeyTypeEnum = ContextKeyTypeEnum String
derive instance newtypeContextKeyTypeEnum :: Newtype ContextKeyTypeEnum _
derive instance repGenericContextKeyTypeEnum :: Generic ContextKeyTypeEnum _
instance showContextKeyTypeEnum :: Show ContextKeyTypeEnum where
  show = genericShow
instance decodeContextKeyTypeEnum :: Decode ContextKeyTypeEnum where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContextKeyTypeEnum :: Encode ContextKeyTypeEnum where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ContextKeyValueListType = ContextKeyValueListType (Array ContextKeyValueType)
derive instance newtypeContextKeyValueListType :: Newtype ContextKeyValueListType _
derive instance repGenericContextKeyValueListType :: Generic ContextKeyValueListType _
instance showContextKeyValueListType :: Show ContextKeyValueListType where
  show = genericShow
instance decodeContextKeyValueListType :: Decode ContextKeyValueListType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContextKeyValueListType :: Encode ContextKeyValueListType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ContextKeyValueType = ContextKeyValueType String
derive instance newtypeContextKeyValueType :: Newtype ContextKeyValueType _
derive instance repGenericContextKeyValueType :: Generic ContextKeyValueType _
instance showContextKeyValueType :: Show ContextKeyValueType where
  show = genericShow
instance decodeContextKeyValueType :: Decode ContextKeyValueType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContextKeyValueType :: Encode ContextKeyValueType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreateAccessKeyRequest = CreateAccessKeyRequest 
  { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType')
  }
derive instance newtypeCreateAccessKeyRequest :: Newtype CreateAccessKeyRequest _
derive instance repGenericCreateAccessKeyRequest :: Generic CreateAccessKeyRequest _
instance showCreateAccessKeyRequest :: Show CreateAccessKeyRequest where
  show = genericShow
instance decodeCreateAccessKeyRequest :: Decode CreateAccessKeyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateAccessKeyRequest :: Encode CreateAccessKeyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateAccessKeyRequest from required parameters
newCreateAccessKeyRequest :: CreateAccessKeyRequest
newCreateAccessKeyRequest  = CreateAccessKeyRequest { "UserName": (NullOrUndefined Nothing) }

-- | Constructs CreateAccessKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAccessKeyRequest' :: ( { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') } -> {"UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') } ) -> CreateAccessKeyRequest
newCreateAccessKeyRequest'  customize = (CreateAccessKeyRequest <<< customize) { "UserName": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>CreateAccessKey</a> request. </p>
newtype CreateAccessKeyResponse = CreateAccessKeyResponse 
  { "AccessKey" :: (AccessKey)
  }
derive instance newtypeCreateAccessKeyResponse :: Newtype CreateAccessKeyResponse _
derive instance repGenericCreateAccessKeyResponse :: Generic CreateAccessKeyResponse _
instance showCreateAccessKeyResponse :: Show CreateAccessKeyResponse where
  show = genericShow
instance decodeCreateAccessKeyResponse :: Decode CreateAccessKeyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateAccessKeyResponse :: Encode CreateAccessKeyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateAccessKeyResponse from required parameters
newCreateAccessKeyResponse :: AccessKey -> CreateAccessKeyResponse
newCreateAccessKeyResponse _AccessKey = CreateAccessKeyResponse { "AccessKey": _AccessKey }

-- | Constructs CreateAccessKeyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAccessKeyResponse' :: AccessKey -> ( { "AccessKey" :: (AccessKey) } -> {"AccessKey" :: (AccessKey) } ) -> CreateAccessKeyResponse
newCreateAccessKeyResponse' _AccessKey customize = (CreateAccessKeyResponse <<< customize) { "AccessKey": _AccessKey }



newtype CreateAccountAliasRequest = CreateAccountAliasRequest 
  { "AccountAlias" :: (AccountAliasType')
  }
derive instance newtypeCreateAccountAliasRequest :: Newtype CreateAccountAliasRequest _
derive instance repGenericCreateAccountAliasRequest :: Generic CreateAccountAliasRequest _
instance showCreateAccountAliasRequest :: Show CreateAccountAliasRequest where
  show = genericShow
instance decodeCreateAccountAliasRequest :: Decode CreateAccountAliasRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateAccountAliasRequest :: Encode CreateAccountAliasRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateAccountAliasRequest from required parameters
newCreateAccountAliasRequest :: AccountAliasType' -> CreateAccountAliasRequest
newCreateAccountAliasRequest _AccountAlias = CreateAccountAliasRequest { "AccountAlias": _AccountAlias }

-- | Constructs CreateAccountAliasRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAccountAliasRequest' :: AccountAliasType' -> ( { "AccountAlias" :: (AccountAliasType') } -> {"AccountAlias" :: (AccountAliasType') } ) -> CreateAccountAliasRequest
newCreateAccountAliasRequest' _AccountAlias customize = (CreateAccountAliasRequest <<< customize) { "AccountAlias": _AccountAlias }



newtype CreateGroupRequest = CreateGroupRequest 
  { "Path" :: NullOrUndefined.NullOrUndefined (PathType')
  , "GroupName" :: (GroupNameType')
  }
derive instance newtypeCreateGroupRequest :: Newtype CreateGroupRequest _
derive instance repGenericCreateGroupRequest :: Generic CreateGroupRequest _
instance showCreateGroupRequest :: Show CreateGroupRequest where
  show = genericShow
instance decodeCreateGroupRequest :: Decode CreateGroupRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateGroupRequest :: Encode CreateGroupRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateGroupRequest from required parameters
newCreateGroupRequest :: GroupNameType' -> CreateGroupRequest
newCreateGroupRequest _GroupName = CreateGroupRequest { "GroupName": _GroupName, "Path": (NullOrUndefined Nothing) }

-- | Constructs CreateGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGroupRequest' :: GroupNameType' -> ( { "Path" :: NullOrUndefined.NullOrUndefined (PathType') , "GroupName" :: (GroupNameType') } -> {"Path" :: NullOrUndefined.NullOrUndefined (PathType') , "GroupName" :: (GroupNameType') } ) -> CreateGroupRequest
newCreateGroupRequest' _GroupName customize = (CreateGroupRequest <<< customize) { "GroupName": _GroupName, "Path": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>CreateGroup</a> request. </p>
newtype CreateGroupResponse = CreateGroupResponse 
  { "Group" :: (Group)
  }
derive instance newtypeCreateGroupResponse :: Newtype CreateGroupResponse _
derive instance repGenericCreateGroupResponse :: Generic CreateGroupResponse _
instance showCreateGroupResponse :: Show CreateGroupResponse where
  show = genericShow
instance decodeCreateGroupResponse :: Decode CreateGroupResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateGroupResponse :: Encode CreateGroupResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateGroupResponse from required parameters
newCreateGroupResponse :: Group -> CreateGroupResponse
newCreateGroupResponse _Group = CreateGroupResponse { "Group": _Group }

-- | Constructs CreateGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGroupResponse' :: Group -> ( { "Group" :: (Group) } -> {"Group" :: (Group) } ) -> CreateGroupResponse
newCreateGroupResponse' _Group customize = (CreateGroupResponse <<< customize) { "Group": _Group }



newtype CreateInstanceProfileRequest = CreateInstanceProfileRequest 
  { "InstanceProfileName" :: (InstanceProfileNameType')
  , "Path" :: NullOrUndefined.NullOrUndefined (PathType')
  }
derive instance newtypeCreateInstanceProfileRequest :: Newtype CreateInstanceProfileRequest _
derive instance repGenericCreateInstanceProfileRequest :: Generic CreateInstanceProfileRequest _
instance showCreateInstanceProfileRequest :: Show CreateInstanceProfileRequest where
  show = genericShow
instance decodeCreateInstanceProfileRequest :: Decode CreateInstanceProfileRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateInstanceProfileRequest :: Encode CreateInstanceProfileRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateInstanceProfileRequest from required parameters
newCreateInstanceProfileRequest :: InstanceProfileNameType' -> CreateInstanceProfileRequest
newCreateInstanceProfileRequest _InstanceProfileName = CreateInstanceProfileRequest { "InstanceProfileName": _InstanceProfileName, "Path": (NullOrUndefined Nothing) }

-- | Constructs CreateInstanceProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateInstanceProfileRequest' :: InstanceProfileNameType' -> ( { "InstanceProfileName" :: (InstanceProfileNameType') , "Path" :: NullOrUndefined.NullOrUndefined (PathType') } -> {"InstanceProfileName" :: (InstanceProfileNameType') , "Path" :: NullOrUndefined.NullOrUndefined (PathType') } ) -> CreateInstanceProfileRequest
newCreateInstanceProfileRequest' _InstanceProfileName customize = (CreateInstanceProfileRequest <<< customize) { "InstanceProfileName": _InstanceProfileName, "Path": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>CreateInstanceProfile</a> request. </p>
newtype CreateInstanceProfileResponse = CreateInstanceProfileResponse 
  { "InstanceProfile" :: (InstanceProfile)
  }
derive instance newtypeCreateInstanceProfileResponse :: Newtype CreateInstanceProfileResponse _
derive instance repGenericCreateInstanceProfileResponse :: Generic CreateInstanceProfileResponse _
instance showCreateInstanceProfileResponse :: Show CreateInstanceProfileResponse where
  show = genericShow
instance decodeCreateInstanceProfileResponse :: Decode CreateInstanceProfileResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateInstanceProfileResponse :: Encode CreateInstanceProfileResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateInstanceProfileResponse from required parameters
newCreateInstanceProfileResponse :: InstanceProfile -> CreateInstanceProfileResponse
newCreateInstanceProfileResponse _InstanceProfile = CreateInstanceProfileResponse { "InstanceProfile": _InstanceProfile }

-- | Constructs CreateInstanceProfileResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateInstanceProfileResponse' :: InstanceProfile -> ( { "InstanceProfile" :: (InstanceProfile) } -> {"InstanceProfile" :: (InstanceProfile) } ) -> CreateInstanceProfileResponse
newCreateInstanceProfileResponse' _InstanceProfile customize = (CreateInstanceProfileResponse <<< customize) { "InstanceProfile": _InstanceProfile }



newtype CreateLoginProfileRequest = CreateLoginProfileRequest 
  { "UserName" :: (UserNameType')
  , "Password" :: (PasswordType')
  , "PasswordResetRequired" :: NullOrUndefined.NullOrUndefined (BooleanType')
  }
derive instance newtypeCreateLoginProfileRequest :: Newtype CreateLoginProfileRequest _
derive instance repGenericCreateLoginProfileRequest :: Generic CreateLoginProfileRequest _
instance showCreateLoginProfileRequest :: Show CreateLoginProfileRequest where
  show = genericShow
instance decodeCreateLoginProfileRequest :: Decode CreateLoginProfileRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateLoginProfileRequest :: Encode CreateLoginProfileRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateLoginProfileRequest from required parameters
newCreateLoginProfileRequest :: PasswordType' -> UserNameType' -> CreateLoginProfileRequest
newCreateLoginProfileRequest _Password _UserName = CreateLoginProfileRequest { "Password": _Password, "UserName": _UserName, "PasswordResetRequired": (NullOrUndefined Nothing) }

-- | Constructs CreateLoginProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateLoginProfileRequest' :: PasswordType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "Password" :: (PasswordType') , "PasswordResetRequired" :: NullOrUndefined.NullOrUndefined (BooleanType') } -> {"UserName" :: (UserNameType') , "Password" :: (PasswordType') , "PasswordResetRequired" :: NullOrUndefined.NullOrUndefined (BooleanType') } ) -> CreateLoginProfileRequest
newCreateLoginProfileRequest' _Password _UserName customize = (CreateLoginProfileRequest <<< customize) { "Password": _Password, "UserName": _UserName, "PasswordResetRequired": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>CreateLoginProfile</a> request. </p>
newtype CreateLoginProfileResponse = CreateLoginProfileResponse 
  { "LoginProfile" :: (LoginProfile)
  }
derive instance newtypeCreateLoginProfileResponse :: Newtype CreateLoginProfileResponse _
derive instance repGenericCreateLoginProfileResponse :: Generic CreateLoginProfileResponse _
instance showCreateLoginProfileResponse :: Show CreateLoginProfileResponse where
  show = genericShow
instance decodeCreateLoginProfileResponse :: Decode CreateLoginProfileResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateLoginProfileResponse :: Encode CreateLoginProfileResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateLoginProfileResponse from required parameters
newCreateLoginProfileResponse :: LoginProfile -> CreateLoginProfileResponse
newCreateLoginProfileResponse _LoginProfile = CreateLoginProfileResponse { "LoginProfile": _LoginProfile }

-- | Constructs CreateLoginProfileResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateLoginProfileResponse' :: LoginProfile -> ( { "LoginProfile" :: (LoginProfile) } -> {"LoginProfile" :: (LoginProfile) } ) -> CreateLoginProfileResponse
newCreateLoginProfileResponse' _LoginProfile customize = (CreateLoginProfileResponse <<< customize) { "LoginProfile": _LoginProfile }



newtype CreateOpenIDConnectProviderRequest = CreateOpenIDConnectProviderRequest 
  { "Url" :: (OpenIDConnectProviderUrlType)
  , "ClientIDList" :: NullOrUndefined.NullOrUndefined (ClientIDListType')
  , "ThumbprintList" :: (ThumbprintListType')
  }
derive instance newtypeCreateOpenIDConnectProviderRequest :: Newtype CreateOpenIDConnectProviderRequest _
derive instance repGenericCreateOpenIDConnectProviderRequest :: Generic CreateOpenIDConnectProviderRequest _
instance showCreateOpenIDConnectProviderRequest :: Show CreateOpenIDConnectProviderRequest where
  show = genericShow
instance decodeCreateOpenIDConnectProviderRequest :: Decode CreateOpenIDConnectProviderRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateOpenIDConnectProviderRequest :: Encode CreateOpenIDConnectProviderRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateOpenIDConnectProviderRequest from required parameters
newCreateOpenIDConnectProviderRequest :: ThumbprintListType' -> OpenIDConnectProviderUrlType -> CreateOpenIDConnectProviderRequest
newCreateOpenIDConnectProviderRequest _ThumbprintList _Url = CreateOpenIDConnectProviderRequest { "ThumbprintList": _ThumbprintList, "Url": _Url, "ClientIDList": (NullOrUndefined Nothing) }

-- | Constructs CreateOpenIDConnectProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateOpenIDConnectProviderRequest' :: ThumbprintListType' -> OpenIDConnectProviderUrlType -> ( { "Url" :: (OpenIDConnectProviderUrlType) , "ClientIDList" :: NullOrUndefined.NullOrUndefined (ClientIDListType') , "ThumbprintList" :: (ThumbprintListType') } -> {"Url" :: (OpenIDConnectProviderUrlType) , "ClientIDList" :: NullOrUndefined.NullOrUndefined (ClientIDListType') , "ThumbprintList" :: (ThumbprintListType') } ) -> CreateOpenIDConnectProviderRequest
newCreateOpenIDConnectProviderRequest' _ThumbprintList _Url customize = (CreateOpenIDConnectProviderRequest <<< customize) { "ThumbprintList": _ThumbprintList, "Url": _Url, "ClientIDList": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>CreateOpenIDConnectProvider</a> request. </p>
newtype CreateOpenIDConnectProviderResponse = CreateOpenIDConnectProviderResponse 
  { "OpenIDConnectProviderArn" :: NullOrUndefined.NullOrUndefined (ArnType')
  }
derive instance newtypeCreateOpenIDConnectProviderResponse :: Newtype CreateOpenIDConnectProviderResponse _
derive instance repGenericCreateOpenIDConnectProviderResponse :: Generic CreateOpenIDConnectProviderResponse _
instance showCreateOpenIDConnectProviderResponse :: Show CreateOpenIDConnectProviderResponse where
  show = genericShow
instance decodeCreateOpenIDConnectProviderResponse :: Decode CreateOpenIDConnectProviderResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateOpenIDConnectProviderResponse :: Encode CreateOpenIDConnectProviderResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateOpenIDConnectProviderResponse from required parameters
newCreateOpenIDConnectProviderResponse :: CreateOpenIDConnectProviderResponse
newCreateOpenIDConnectProviderResponse  = CreateOpenIDConnectProviderResponse { "OpenIDConnectProviderArn": (NullOrUndefined Nothing) }

-- | Constructs CreateOpenIDConnectProviderResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateOpenIDConnectProviderResponse' :: ( { "OpenIDConnectProviderArn" :: NullOrUndefined.NullOrUndefined (ArnType') } -> {"OpenIDConnectProviderArn" :: NullOrUndefined.NullOrUndefined (ArnType') } ) -> CreateOpenIDConnectProviderResponse
newCreateOpenIDConnectProviderResponse'  customize = (CreateOpenIDConnectProviderResponse <<< customize) { "OpenIDConnectProviderArn": (NullOrUndefined Nothing) }



newtype CreatePolicyRequest = CreatePolicyRequest 
  { "PolicyName" :: (PolicyNameType')
  , "Path" :: NullOrUndefined.NullOrUndefined (PolicyPathType')
  , "PolicyDocument" :: (PolicyDocumentType')
  , "Description" :: NullOrUndefined.NullOrUndefined (PolicyDescriptionType')
  }
derive instance newtypeCreatePolicyRequest :: Newtype CreatePolicyRequest _
derive instance repGenericCreatePolicyRequest :: Generic CreatePolicyRequest _
instance showCreatePolicyRequest :: Show CreatePolicyRequest where
  show = genericShow
instance decodeCreatePolicyRequest :: Decode CreatePolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreatePolicyRequest :: Encode CreatePolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreatePolicyRequest from required parameters
newCreatePolicyRequest :: PolicyDocumentType' -> PolicyNameType' -> CreatePolicyRequest
newCreatePolicyRequest _PolicyDocument _PolicyName = CreatePolicyRequest { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "Description": (NullOrUndefined Nothing), "Path": (NullOrUndefined Nothing) }

-- | Constructs CreatePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePolicyRequest' :: PolicyDocumentType' -> PolicyNameType' -> ( { "PolicyName" :: (PolicyNameType') , "Path" :: NullOrUndefined.NullOrUndefined (PolicyPathType') , "PolicyDocument" :: (PolicyDocumentType') , "Description" :: NullOrUndefined.NullOrUndefined (PolicyDescriptionType') } -> {"PolicyName" :: (PolicyNameType') , "Path" :: NullOrUndefined.NullOrUndefined (PolicyPathType') , "PolicyDocument" :: (PolicyDocumentType') , "Description" :: NullOrUndefined.NullOrUndefined (PolicyDescriptionType') } ) -> CreatePolicyRequest
newCreatePolicyRequest' _PolicyDocument _PolicyName customize = (CreatePolicyRequest <<< customize) { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "Description": (NullOrUndefined Nothing), "Path": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>CreatePolicy</a> request. </p>
newtype CreatePolicyResponse = CreatePolicyResponse 
  { "Policy" :: NullOrUndefined.NullOrUndefined (Policy)
  }
derive instance newtypeCreatePolicyResponse :: Newtype CreatePolicyResponse _
derive instance repGenericCreatePolicyResponse :: Generic CreatePolicyResponse _
instance showCreatePolicyResponse :: Show CreatePolicyResponse where
  show = genericShow
instance decodeCreatePolicyResponse :: Decode CreatePolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreatePolicyResponse :: Encode CreatePolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreatePolicyResponse from required parameters
newCreatePolicyResponse :: CreatePolicyResponse
newCreatePolicyResponse  = CreatePolicyResponse { "Policy": (NullOrUndefined Nothing) }

-- | Constructs CreatePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePolicyResponse' :: ( { "Policy" :: NullOrUndefined.NullOrUndefined (Policy) } -> {"Policy" :: NullOrUndefined.NullOrUndefined (Policy) } ) -> CreatePolicyResponse
newCreatePolicyResponse'  customize = (CreatePolicyResponse <<< customize) { "Policy": (NullOrUndefined Nothing) }



newtype CreatePolicyVersionRequest = CreatePolicyVersionRequest 
  { "PolicyArn" :: (ArnType')
  , "PolicyDocument" :: (PolicyDocumentType')
  , "SetAsDefault" :: NullOrUndefined.NullOrUndefined (BooleanType')
  }
derive instance newtypeCreatePolicyVersionRequest :: Newtype CreatePolicyVersionRequest _
derive instance repGenericCreatePolicyVersionRequest :: Generic CreatePolicyVersionRequest _
instance showCreatePolicyVersionRequest :: Show CreatePolicyVersionRequest where
  show = genericShow
instance decodeCreatePolicyVersionRequest :: Decode CreatePolicyVersionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreatePolicyVersionRequest :: Encode CreatePolicyVersionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreatePolicyVersionRequest from required parameters
newCreatePolicyVersionRequest :: ArnType' -> PolicyDocumentType' -> CreatePolicyVersionRequest
newCreatePolicyVersionRequest _PolicyArn _PolicyDocument = CreatePolicyVersionRequest { "PolicyArn": _PolicyArn, "PolicyDocument": _PolicyDocument, "SetAsDefault": (NullOrUndefined Nothing) }

-- | Constructs CreatePolicyVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePolicyVersionRequest' :: ArnType' -> PolicyDocumentType' -> ( { "PolicyArn" :: (ArnType') , "PolicyDocument" :: (PolicyDocumentType') , "SetAsDefault" :: NullOrUndefined.NullOrUndefined (BooleanType') } -> {"PolicyArn" :: (ArnType') , "PolicyDocument" :: (PolicyDocumentType') , "SetAsDefault" :: NullOrUndefined.NullOrUndefined (BooleanType') } ) -> CreatePolicyVersionRequest
newCreatePolicyVersionRequest' _PolicyArn _PolicyDocument customize = (CreatePolicyVersionRequest <<< customize) { "PolicyArn": _PolicyArn, "PolicyDocument": _PolicyDocument, "SetAsDefault": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>CreatePolicyVersion</a> request. </p>
newtype CreatePolicyVersionResponse = CreatePolicyVersionResponse 
  { "PolicyVersion" :: NullOrUndefined.NullOrUndefined (PolicyVersion)
  }
derive instance newtypeCreatePolicyVersionResponse :: Newtype CreatePolicyVersionResponse _
derive instance repGenericCreatePolicyVersionResponse :: Generic CreatePolicyVersionResponse _
instance showCreatePolicyVersionResponse :: Show CreatePolicyVersionResponse where
  show = genericShow
instance decodeCreatePolicyVersionResponse :: Decode CreatePolicyVersionResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreatePolicyVersionResponse :: Encode CreatePolicyVersionResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreatePolicyVersionResponse from required parameters
newCreatePolicyVersionResponse :: CreatePolicyVersionResponse
newCreatePolicyVersionResponse  = CreatePolicyVersionResponse { "PolicyVersion": (NullOrUndefined Nothing) }

-- | Constructs CreatePolicyVersionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePolicyVersionResponse' :: ( { "PolicyVersion" :: NullOrUndefined.NullOrUndefined (PolicyVersion) } -> {"PolicyVersion" :: NullOrUndefined.NullOrUndefined (PolicyVersion) } ) -> CreatePolicyVersionResponse
newCreatePolicyVersionResponse'  customize = (CreatePolicyVersionResponse <<< customize) { "PolicyVersion": (NullOrUndefined Nothing) }



newtype CreateRoleRequest = CreateRoleRequest 
  { "Path" :: NullOrUndefined.NullOrUndefined (PathType')
  , "RoleName" :: (RoleNameType')
  , "AssumeRolePolicyDocument" :: (PolicyDocumentType')
  , "Description" :: NullOrUndefined.NullOrUndefined (RoleDescriptionType')
  }
derive instance newtypeCreateRoleRequest :: Newtype CreateRoleRequest _
derive instance repGenericCreateRoleRequest :: Generic CreateRoleRequest _
instance showCreateRoleRequest :: Show CreateRoleRequest where
  show = genericShow
instance decodeCreateRoleRequest :: Decode CreateRoleRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateRoleRequest :: Encode CreateRoleRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateRoleRequest from required parameters
newCreateRoleRequest :: PolicyDocumentType' -> RoleNameType' -> CreateRoleRequest
newCreateRoleRequest _AssumeRolePolicyDocument _RoleName = CreateRoleRequest { "AssumeRolePolicyDocument": _AssumeRolePolicyDocument, "RoleName": _RoleName, "Description": (NullOrUndefined Nothing), "Path": (NullOrUndefined Nothing) }

-- | Constructs CreateRoleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRoleRequest' :: PolicyDocumentType' -> RoleNameType' -> ( { "Path" :: NullOrUndefined.NullOrUndefined (PathType') , "RoleName" :: (RoleNameType') , "AssumeRolePolicyDocument" :: (PolicyDocumentType') , "Description" :: NullOrUndefined.NullOrUndefined (RoleDescriptionType') } -> {"Path" :: NullOrUndefined.NullOrUndefined (PathType') , "RoleName" :: (RoleNameType') , "AssumeRolePolicyDocument" :: (PolicyDocumentType') , "Description" :: NullOrUndefined.NullOrUndefined (RoleDescriptionType') } ) -> CreateRoleRequest
newCreateRoleRequest' _AssumeRolePolicyDocument _RoleName customize = (CreateRoleRequest <<< customize) { "AssumeRolePolicyDocument": _AssumeRolePolicyDocument, "RoleName": _RoleName, "Description": (NullOrUndefined Nothing), "Path": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>CreateRole</a> request. </p>
newtype CreateRoleResponse = CreateRoleResponse 
  { "Role" :: (Role)
  }
derive instance newtypeCreateRoleResponse :: Newtype CreateRoleResponse _
derive instance repGenericCreateRoleResponse :: Generic CreateRoleResponse _
instance showCreateRoleResponse :: Show CreateRoleResponse where
  show = genericShow
instance decodeCreateRoleResponse :: Decode CreateRoleResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateRoleResponse :: Encode CreateRoleResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateRoleResponse from required parameters
newCreateRoleResponse :: Role -> CreateRoleResponse
newCreateRoleResponse _Role = CreateRoleResponse { "Role": _Role }

-- | Constructs CreateRoleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateRoleResponse' :: Role -> ( { "Role" :: (Role) } -> {"Role" :: (Role) } ) -> CreateRoleResponse
newCreateRoleResponse' _Role customize = (CreateRoleResponse <<< customize) { "Role": _Role }



newtype CreateSAMLProviderRequest = CreateSAMLProviderRequest 
  { "SAMLMetadataDocument" :: (SAMLMetadataDocumentType)
  , "Name" :: (SAMLProviderNameType)
  }
derive instance newtypeCreateSAMLProviderRequest :: Newtype CreateSAMLProviderRequest _
derive instance repGenericCreateSAMLProviderRequest :: Generic CreateSAMLProviderRequest _
instance showCreateSAMLProviderRequest :: Show CreateSAMLProviderRequest where
  show = genericShow
instance decodeCreateSAMLProviderRequest :: Decode CreateSAMLProviderRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateSAMLProviderRequest :: Encode CreateSAMLProviderRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateSAMLProviderRequest from required parameters
newCreateSAMLProviderRequest :: SAMLProviderNameType -> SAMLMetadataDocumentType -> CreateSAMLProviderRequest
newCreateSAMLProviderRequest _Name _SAMLMetadataDocument = CreateSAMLProviderRequest { "Name": _Name, "SAMLMetadataDocument": _SAMLMetadataDocument }

-- | Constructs CreateSAMLProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSAMLProviderRequest' :: SAMLProviderNameType -> SAMLMetadataDocumentType -> ( { "SAMLMetadataDocument" :: (SAMLMetadataDocumentType) , "Name" :: (SAMLProviderNameType) } -> {"SAMLMetadataDocument" :: (SAMLMetadataDocumentType) , "Name" :: (SAMLProviderNameType) } ) -> CreateSAMLProviderRequest
newCreateSAMLProviderRequest' _Name _SAMLMetadataDocument customize = (CreateSAMLProviderRequest <<< customize) { "Name": _Name, "SAMLMetadataDocument": _SAMLMetadataDocument }



-- | <p>Contains the response to a successful <a>CreateSAMLProvider</a> request. </p>
newtype CreateSAMLProviderResponse = CreateSAMLProviderResponse 
  { "SAMLProviderArn" :: NullOrUndefined.NullOrUndefined (ArnType')
  }
derive instance newtypeCreateSAMLProviderResponse :: Newtype CreateSAMLProviderResponse _
derive instance repGenericCreateSAMLProviderResponse :: Generic CreateSAMLProviderResponse _
instance showCreateSAMLProviderResponse :: Show CreateSAMLProviderResponse where
  show = genericShow
instance decodeCreateSAMLProviderResponse :: Decode CreateSAMLProviderResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateSAMLProviderResponse :: Encode CreateSAMLProviderResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateSAMLProviderResponse from required parameters
newCreateSAMLProviderResponse :: CreateSAMLProviderResponse
newCreateSAMLProviderResponse  = CreateSAMLProviderResponse { "SAMLProviderArn": (NullOrUndefined Nothing) }

-- | Constructs CreateSAMLProviderResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSAMLProviderResponse' :: ( { "SAMLProviderArn" :: NullOrUndefined.NullOrUndefined (ArnType') } -> {"SAMLProviderArn" :: NullOrUndefined.NullOrUndefined (ArnType') } ) -> CreateSAMLProviderResponse
newCreateSAMLProviderResponse'  customize = (CreateSAMLProviderResponse <<< customize) { "SAMLProviderArn": (NullOrUndefined Nothing) }



newtype CreateServiceLinkedRoleRequest = CreateServiceLinkedRoleRequest 
  { "AWSServiceName" :: (GroupNameType')
  , "Description" :: NullOrUndefined.NullOrUndefined (RoleDescriptionType')
  , "CustomSuffix" :: NullOrUndefined.NullOrUndefined (CustomSuffixType')
  }
derive instance newtypeCreateServiceLinkedRoleRequest :: Newtype CreateServiceLinkedRoleRequest _
derive instance repGenericCreateServiceLinkedRoleRequest :: Generic CreateServiceLinkedRoleRequest _
instance showCreateServiceLinkedRoleRequest :: Show CreateServiceLinkedRoleRequest where
  show = genericShow
instance decodeCreateServiceLinkedRoleRequest :: Decode CreateServiceLinkedRoleRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateServiceLinkedRoleRequest :: Encode CreateServiceLinkedRoleRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateServiceLinkedRoleRequest from required parameters
newCreateServiceLinkedRoleRequest :: GroupNameType' -> CreateServiceLinkedRoleRequest
newCreateServiceLinkedRoleRequest _AWSServiceName = CreateServiceLinkedRoleRequest { "AWSServiceName": _AWSServiceName, "CustomSuffix": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing) }

-- | Constructs CreateServiceLinkedRoleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServiceLinkedRoleRequest' :: GroupNameType' -> ( { "AWSServiceName" :: (GroupNameType') , "Description" :: NullOrUndefined.NullOrUndefined (RoleDescriptionType') , "CustomSuffix" :: NullOrUndefined.NullOrUndefined (CustomSuffixType') } -> {"AWSServiceName" :: (GroupNameType') , "Description" :: NullOrUndefined.NullOrUndefined (RoleDescriptionType') , "CustomSuffix" :: NullOrUndefined.NullOrUndefined (CustomSuffixType') } ) -> CreateServiceLinkedRoleRequest
newCreateServiceLinkedRoleRequest' _AWSServiceName customize = (CreateServiceLinkedRoleRequest <<< customize) { "AWSServiceName": _AWSServiceName, "CustomSuffix": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing) }



newtype CreateServiceLinkedRoleResponse = CreateServiceLinkedRoleResponse 
  { "Role" :: NullOrUndefined.NullOrUndefined (Role)
  }
derive instance newtypeCreateServiceLinkedRoleResponse :: Newtype CreateServiceLinkedRoleResponse _
derive instance repGenericCreateServiceLinkedRoleResponse :: Generic CreateServiceLinkedRoleResponse _
instance showCreateServiceLinkedRoleResponse :: Show CreateServiceLinkedRoleResponse where
  show = genericShow
instance decodeCreateServiceLinkedRoleResponse :: Decode CreateServiceLinkedRoleResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateServiceLinkedRoleResponse :: Encode CreateServiceLinkedRoleResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateServiceLinkedRoleResponse from required parameters
newCreateServiceLinkedRoleResponse :: CreateServiceLinkedRoleResponse
newCreateServiceLinkedRoleResponse  = CreateServiceLinkedRoleResponse { "Role": (NullOrUndefined Nothing) }

-- | Constructs CreateServiceLinkedRoleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServiceLinkedRoleResponse' :: ( { "Role" :: NullOrUndefined.NullOrUndefined (Role) } -> {"Role" :: NullOrUndefined.NullOrUndefined (Role) } ) -> CreateServiceLinkedRoleResponse
newCreateServiceLinkedRoleResponse'  customize = (CreateServiceLinkedRoleResponse <<< customize) { "Role": (NullOrUndefined Nothing) }



newtype CreateServiceSpecificCredentialRequest = CreateServiceSpecificCredentialRequest 
  { "UserName" :: (UserNameType')
  , "ServiceName" :: (ServiceName')
  }
derive instance newtypeCreateServiceSpecificCredentialRequest :: Newtype CreateServiceSpecificCredentialRequest _
derive instance repGenericCreateServiceSpecificCredentialRequest :: Generic CreateServiceSpecificCredentialRequest _
instance showCreateServiceSpecificCredentialRequest :: Show CreateServiceSpecificCredentialRequest where
  show = genericShow
instance decodeCreateServiceSpecificCredentialRequest :: Decode CreateServiceSpecificCredentialRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateServiceSpecificCredentialRequest :: Encode CreateServiceSpecificCredentialRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateServiceSpecificCredentialRequest from required parameters
newCreateServiceSpecificCredentialRequest :: ServiceName' -> UserNameType' -> CreateServiceSpecificCredentialRequest
newCreateServiceSpecificCredentialRequest _ServiceName _UserName = CreateServiceSpecificCredentialRequest { "ServiceName": _ServiceName, "UserName": _UserName }

-- | Constructs CreateServiceSpecificCredentialRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServiceSpecificCredentialRequest' :: ServiceName' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "ServiceName" :: (ServiceName') } -> {"UserName" :: (UserNameType') , "ServiceName" :: (ServiceName') } ) -> CreateServiceSpecificCredentialRequest
newCreateServiceSpecificCredentialRequest' _ServiceName _UserName customize = (CreateServiceSpecificCredentialRequest <<< customize) { "ServiceName": _ServiceName, "UserName": _UserName }



newtype CreateServiceSpecificCredentialResponse = CreateServiceSpecificCredentialResponse 
  { "ServiceSpecificCredential" :: NullOrUndefined.NullOrUndefined (ServiceSpecificCredential)
  }
derive instance newtypeCreateServiceSpecificCredentialResponse :: Newtype CreateServiceSpecificCredentialResponse _
derive instance repGenericCreateServiceSpecificCredentialResponse :: Generic CreateServiceSpecificCredentialResponse _
instance showCreateServiceSpecificCredentialResponse :: Show CreateServiceSpecificCredentialResponse where
  show = genericShow
instance decodeCreateServiceSpecificCredentialResponse :: Decode CreateServiceSpecificCredentialResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateServiceSpecificCredentialResponse :: Encode CreateServiceSpecificCredentialResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateServiceSpecificCredentialResponse from required parameters
newCreateServiceSpecificCredentialResponse :: CreateServiceSpecificCredentialResponse
newCreateServiceSpecificCredentialResponse  = CreateServiceSpecificCredentialResponse { "ServiceSpecificCredential": (NullOrUndefined Nothing) }

-- | Constructs CreateServiceSpecificCredentialResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServiceSpecificCredentialResponse' :: ( { "ServiceSpecificCredential" :: NullOrUndefined.NullOrUndefined (ServiceSpecificCredential) } -> {"ServiceSpecificCredential" :: NullOrUndefined.NullOrUndefined (ServiceSpecificCredential) } ) -> CreateServiceSpecificCredentialResponse
newCreateServiceSpecificCredentialResponse'  customize = (CreateServiceSpecificCredentialResponse <<< customize) { "ServiceSpecificCredential": (NullOrUndefined Nothing) }



newtype CreateUserRequest = CreateUserRequest 
  { "Path" :: NullOrUndefined.NullOrUndefined (PathType')
  , "UserName" :: (UserNameType')
  }
derive instance newtypeCreateUserRequest :: Newtype CreateUserRequest _
derive instance repGenericCreateUserRequest :: Generic CreateUserRequest _
instance showCreateUserRequest :: Show CreateUserRequest where
  show = genericShow
instance decodeCreateUserRequest :: Decode CreateUserRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateUserRequest :: Encode CreateUserRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateUserRequest from required parameters
newCreateUserRequest :: UserNameType' -> CreateUserRequest
newCreateUserRequest _UserName = CreateUserRequest { "UserName": _UserName, "Path": (NullOrUndefined Nothing) }

-- | Constructs CreateUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateUserRequest' :: UserNameType' -> ( { "Path" :: NullOrUndefined.NullOrUndefined (PathType') , "UserName" :: (UserNameType') } -> {"Path" :: NullOrUndefined.NullOrUndefined (PathType') , "UserName" :: (UserNameType') } ) -> CreateUserRequest
newCreateUserRequest' _UserName customize = (CreateUserRequest <<< customize) { "UserName": _UserName, "Path": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>CreateUser</a> request. </p>
newtype CreateUserResponse = CreateUserResponse 
  { "User" :: NullOrUndefined.NullOrUndefined (User)
  }
derive instance newtypeCreateUserResponse :: Newtype CreateUserResponse _
derive instance repGenericCreateUserResponse :: Generic CreateUserResponse _
instance showCreateUserResponse :: Show CreateUserResponse where
  show = genericShow
instance decodeCreateUserResponse :: Decode CreateUserResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateUserResponse :: Encode CreateUserResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateUserResponse from required parameters
newCreateUserResponse :: CreateUserResponse
newCreateUserResponse  = CreateUserResponse { "User": (NullOrUndefined Nothing) }

-- | Constructs CreateUserResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateUserResponse' :: ( { "User" :: NullOrUndefined.NullOrUndefined (User) } -> {"User" :: NullOrUndefined.NullOrUndefined (User) } ) -> CreateUserResponse
newCreateUserResponse'  customize = (CreateUserResponse <<< customize) { "User": (NullOrUndefined Nothing) }



newtype CreateVirtualMFADeviceRequest = CreateVirtualMFADeviceRequest 
  { "Path" :: NullOrUndefined.NullOrUndefined (PathType')
  , "VirtualMFADeviceName" :: (VirtualMFADeviceName')
  }
derive instance newtypeCreateVirtualMFADeviceRequest :: Newtype CreateVirtualMFADeviceRequest _
derive instance repGenericCreateVirtualMFADeviceRequest :: Generic CreateVirtualMFADeviceRequest _
instance showCreateVirtualMFADeviceRequest :: Show CreateVirtualMFADeviceRequest where
  show = genericShow
instance decodeCreateVirtualMFADeviceRequest :: Decode CreateVirtualMFADeviceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateVirtualMFADeviceRequest :: Encode CreateVirtualMFADeviceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateVirtualMFADeviceRequest from required parameters
newCreateVirtualMFADeviceRequest :: VirtualMFADeviceName' -> CreateVirtualMFADeviceRequest
newCreateVirtualMFADeviceRequest _VirtualMFADeviceName = CreateVirtualMFADeviceRequest { "VirtualMFADeviceName": _VirtualMFADeviceName, "Path": (NullOrUndefined Nothing) }

-- | Constructs CreateVirtualMFADeviceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateVirtualMFADeviceRequest' :: VirtualMFADeviceName' -> ( { "Path" :: NullOrUndefined.NullOrUndefined (PathType') , "VirtualMFADeviceName" :: (VirtualMFADeviceName') } -> {"Path" :: NullOrUndefined.NullOrUndefined (PathType') , "VirtualMFADeviceName" :: (VirtualMFADeviceName') } ) -> CreateVirtualMFADeviceRequest
newCreateVirtualMFADeviceRequest' _VirtualMFADeviceName customize = (CreateVirtualMFADeviceRequest <<< customize) { "VirtualMFADeviceName": _VirtualMFADeviceName, "Path": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>CreateVirtualMFADevice</a> request. </p>
newtype CreateVirtualMFADeviceResponse = CreateVirtualMFADeviceResponse 
  { "VirtualMFADevice" :: (VirtualMFADevice)
  }
derive instance newtypeCreateVirtualMFADeviceResponse :: Newtype CreateVirtualMFADeviceResponse _
derive instance repGenericCreateVirtualMFADeviceResponse :: Generic CreateVirtualMFADeviceResponse _
instance showCreateVirtualMFADeviceResponse :: Show CreateVirtualMFADeviceResponse where
  show = genericShow
instance decodeCreateVirtualMFADeviceResponse :: Decode CreateVirtualMFADeviceResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateVirtualMFADeviceResponse :: Encode CreateVirtualMFADeviceResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateVirtualMFADeviceResponse from required parameters
newCreateVirtualMFADeviceResponse :: VirtualMFADevice -> CreateVirtualMFADeviceResponse
newCreateVirtualMFADeviceResponse _VirtualMFADevice = CreateVirtualMFADeviceResponse { "VirtualMFADevice": _VirtualMFADevice }

-- | Constructs CreateVirtualMFADeviceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateVirtualMFADeviceResponse' :: VirtualMFADevice -> ( { "VirtualMFADevice" :: (VirtualMFADevice) } -> {"VirtualMFADevice" :: (VirtualMFADevice) } ) -> CreateVirtualMFADeviceResponse
newCreateVirtualMFADeviceResponse' _VirtualMFADevice customize = (CreateVirtualMFADeviceResponse <<< customize) { "VirtualMFADevice": _VirtualMFADevice }



-- | <p>The request was rejected because the most recent credential report has expired. To generate a new credential report, use <a>GenerateCredentialReport</a>. For more information about credential report expiration, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting Credential Reports</a> in the <i>IAM User Guide</i>.</p>
newtype CredentialReportExpiredException = CredentialReportExpiredException 
  { "message" :: NullOrUndefined.NullOrUndefined (CredentialReportExpiredExceptionMessage')
  }
derive instance newtypeCredentialReportExpiredException :: Newtype CredentialReportExpiredException _
derive instance repGenericCredentialReportExpiredException :: Generic CredentialReportExpiredException _
instance showCredentialReportExpiredException :: Show CredentialReportExpiredException where
  show = genericShow
instance decodeCredentialReportExpiredException :: Decode CredentialReportExpiredException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCredentialReportExpiredException :: Encode CredentialReportExpiredException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CredentialReportExpiredException from required parameters
newCredentialReportExpiredException :: CredentialReportExpiredException
newCredentialReportExpiredException  = CredentialReportExpiredException { "message": (NullOrUndefined Nothing) }

-- | Constructs CredentialReportExpiredException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCredentialReportExpiredException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (CredentialReportExpiredExceptionMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (CredentialReportExpiredExceptionMessage') } ) -> CredentialReportExpiredException
newCredentialReportExpiredException'  customize = (CredentialReportExpiredException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the credential report does not exist. To generate a credential report, use <a>GenerateCredentialReport</a>.</p>
newtype CredentialReportNotPresentException = CredentialReportNotPresentException 
  { "message" :: NullOrUndefined.NullOrUndefined (CredentialReportNotPresentExceptionMessage')
  }
derive instance newtypeCredentialReportNotPresentException :: Newtype CredentialReportNotPresentException _
derive instance repGenericCredentialReportNotPresentException :: Generic CredentialReportNotPresentException _
instance showCredentialReportNotPresentException :: Show CredentialReportNotPresentException where
  show = genericShow
instance decodeCredentialReportNotPresentException :: Decode CredentialReportNotPresentException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCredentialReportNotPresentException :: Encode CredentialReportNotPresentException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CredentialReportNotPresentException from required parameters
newCredentialReportNotPresentException :: CredentialReportNotPresentException
newCredentialReportNotPresentException  = CredentialReportNotPresentException { "message": (NullOrUndefined Nothing) }

-- | Constructs CredentialReportNotPresentException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCredentialReportNotPresentException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (CredentialReportNotPresentExceptionMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (CredentialReportNotPresentExceptionMessage') } ) -> CredentialReportNotPresentException
newCredentialReportNotPresentException'  customize = (CredentialReportNotPresentException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the credential report is still being generated.</p>
newtype CredentialReportNotReadyException = CredentialReportNotReadyException 
  { "message" :: NullOrUndefined.NullOrUndefined (CredentialReportNotReadyExceptionMessage')
  }
derive instance newtypeCredentialReportNotReadyException :: Newtype CredentialReportNotReadyException _
derive instance repGenericCredentialReportNotReadyException :: Generic CredentialReportNotReadyException _
instance showCredentialReportNotReadyException :: Show CredentialReportNotReadyException where
  show = genericShow
instance decodeCredentialReportNotReadyException :: Decode CredentialReportNotReadyException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCredentialReportNotReadyException :: Encode CredentialReportNotReadyException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CredentialReportNotReadyException from required parameters
newCredentialReportNotReadyException :: CredentialReportNotReadyException
newCredentialReportNotReadyException  = CredentialReportNotReadyException { "message": (NullOrUndefined Nothing) }

-- | Constructs CredentialReportNotReadyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCredentialReportNotReadyException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (CredentialReportNotReadyExceptionMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (CredentialReportNotReadyExceptionMessage') } ) -> CredentialReportNotReadyException
newCredentialReportNotReadyException'  customize = (CredentialReportNotReadyException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype DeactivateMFADeviceRequest = DeactivateMFADeviceRequest 
  { "UserName" :: (ExistingUserNameType')
  , "SerialNumber" :: (SerialNumberType')
  }
derive instance newtypeDeactivateMFADeviceRequest :: Newtype DeactivateMFADeviceRequest _
derive instance repGenericDeactivateMFADeviceRequest :: Generic DeactivateMFADeviceRequest _
instance showDeactivateMFADeviceRequest :: Show DeactivateMFADeviceRequest where
  show = genericShow
instance decodeDeactivateMFADeviceRequest :: Decode DeactivateMFADeviceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeactivateMFADeviceRequest :: Encode DeactivateMFADeviceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeactivateMFADeviceRequest from required parameters
newDeactivateMFADeviceRequest :: SerialNumberType' -> ExistingUserNameType' -> DeactivateMFADeviceRequest
newDeactivateMFADeviceRequest _SerialNumber _UserName = DeactivateMFADeviceRequest { "SerialNumber": _SerialNumber, "UserName": _UserName }

-- | Constructs DeactivateMFADeviceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeactivateMFADeviceRequest' :: SerialNumberType' -> ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "SerialNumber" :: (SerialNumberType') } -> {"UserName" :: (ExistingUserNameType') , "SerialNumber" :: (SerialNumberType') } ) -> DeactivateMFADeviceRequest
newDeactivateMFADeviceRequest' _SerialNumber _UserName customize = (DeactivateMFADeviceRequest <<< customize) { "SerialNumber": _SerialNumber, "UserName": _UserName }



newtype DeleteAccessKeyRequest = DeleteAccessKeyRequest 
  { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType')
  , "AccessKeyId" :: (AccessKeyIdType')
  }
derive instance newtypeDeleteAccessKeyRequest :: Newtype DeleteAccessKeyRequest _
derive instance repGenericDeleteAccessKeyRequest :: Generic DeleteAccessKeyRequest _
instance showDeleteAccessKeyRequest :: Show DeleteAccessKeyRequest where
  show = genericShow
instance decodeDeleteAccessKeyRequest :: Decode DeleteAccessKeyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteAccessKeyRequest :: Encode DeleteAccessKeyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteAccessKeyRequest from required parameters
newDeleteAccessKeyRequest :: AccessKeyIdType' -> DeleteAccessKeyRequest
newDeleteAccessKeyRequest _AccessKeyId = DeleteAccessKeyRequest { "AccessKeyId": _AccessKeyId, "UserName": (NullOrUndefined Nothing) }

-- | Constructs DeleteAccessKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteAccessKeyRequest' :: AccessKeyIdType' -> ( { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') , "AccessKeyId" :: (AccessKeyIdType') } -> {"UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') , "AccessKeyId" :: (AccessKeyIdType') } ) -> DeleteAccessKeyRequest
newDeleteAccessKeyRequest' _AccessKeyId customize = (DeleteAccessKeyRequest <<< customize) { "AccessKeyId": _AccessKeyId, "UserName": (NullOrUndefined Nothing) }



newtype DeleteAccountAliasRequest = DeleteAccountAliasRequest 
  { "AccountAlias" :: (AccountAliasType')
  }
derive instance newtypeDeleteAccountAliasRequest :: Newtype DeleteAccountAliasRequest _
derive instance repGenericDeleteAccountAliasRequest :: Generic DeleteAccountAliasRequest _
instance showDeleteAccountAliasRequest :: Show DeleteAccountAliasRequest where
  show = genericShow
instance decodeDeleteAccountAliasRequest :: Decode DeleteAccountAliasRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteAccountAliasRequest :: Encode DeleteAccountAliasRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteAccountAliasRequest from required parameters
newDeleteAccountAliasRequest :: AccountAliasType' -> DeleteAccountAliasRequest
newDeleteAccountAliasRequest _AccountAlias = DeleteAccountAliasRequest { "AccountAlias": _AccountAlias }

-- | Constructs DeleteAccountAliasRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteAccountAliasRequest' :: AccountAliasType' -> ( { "AccountAlias" :: (AccountAliasType') } -> {"AccountAlias" :: (AccountAliasType') } ) -> DeleteAccountAliasRequest
newDeleteAccountAliasRequest' _AccountAlias customize = (DeleteAccountAliasRequest <<< customize) { "AccountAlias": _AccountAlias }



-- | <p>The request was rejected because it attempted to delete a resource that has attached subordinate entities. The error message describes these entities.</p>
newtype DeleteConflictException = DeleteConflictException 
  { "message" :: NullOrUndefined.NullOrUndefined (DeleteConflictMessage')
  }
derive instance newtypeDeleteConflictException :: Newtype DeleteConflictException _
derive instance repGenericDeleteConflictException :: Generic DeleteConflictException _
instance showDeleteConflictException :: Show DeleteConflictException where
  show = genericShow
instance decodeDeleteConflictException :: Decode DeleteConflictException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteConflictException :: Encode DeleteConflictException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteConflictException from required parameters
newDeleteConflictException :: DeleteConflictException
newDeleteConflictException  = DeleteConflictException { "message": (NullOrUndefined Nothing) }

-- | Constructs DeleteConflictException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteConflictException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (DeleteConflictMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (DeleteConflictMessage') } ) -> DeleteConflictException
newDeleteConflictException'  customize = (DeleteConflictException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype DeleteGroupPolicyRequest = DeleteGroupPolicyRequest 
  { "GroupName" :: (GroupNameType')
  , "PolicyName" :: (PolicyNameType')
  }
derive instance newtypeDeleteGroupPolicyRequest :: Newtype DeleteGroupPolicyRequest _
derive instance repGenericDeleteGroupPolicyRequest :: Generic DeleteGroupPolicyRequest _
instance showDeleteGroupPolicyRequest :: Show DeleteGroupPolicyRequest where
  show = genericShow
instance decodeDeleteGroupPolicyRequest :: Decode DeleteGroupPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteGroupPolicyRequest :: Encode DeleteGroupPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteGroupPolicyRequest from required parameters
newDeleteGroupPolicyRequest :: GroupNameType' -> PolicyNameType' -> DeleteGroupPolicyRequest
newDeleteGroupPolicyRequest _GroupName _PolicyName = DeleteGroupPolicyRequest { "GroupName": _GroupName, "PolicyName": _PolicyName }

-- | Constructs DeleteGroupPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteGroupPolicyRequest' :: GroupNameType' -> PolicyNameType' -> ( { "GroupName" :: (GroupNameType') , "PolicyName" :: (PolicyNameType') } -> {"GroupName" :: (GroupNameType') , "PolicyName" :: (PolicyNameType') } ) -> DeleteGroupPolicyRequest
newDeleteGroupPolicyRequest' _GroupName _PolicyName customize = (DeleteGroupPolicyRequest <<< customize) { "GroupName": _GroupName, "PolicyName": _PolicyName }



newtype DeleteGroupRequest = DeleteGroupRequest 
  { "GroupName" :: (GroupNameType')
  }
derive instance newtypeDeleteGroupRequest :: Newtype DeleteGroupRequest _
derive instance repGenericDeleteGroupRequest :: Generic DeleteGroupRequest _
instance showDeleteGroupRequest :: Show DeleteGroupRequest where
  show = genericShow
instance decodeDeleteGroupRequest :: Decode DeleteGroupRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteGroupRequest :: Encode DeleteGroupRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteGroupRequest from required parameters
newDeleteGroupRequest :: GroupNameType' -> DeleteGroupRequest
newDeleteGroupRequest _GroupName = DeleteGroupRequest { "GroupName": _GroupName }

-- | Constructs DeleteGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteGroupRequest' :: GroupNameType' -> ( { "GroupName" :: (GroupNameType') } -> {"GroupName" :: (GroupNameType') } ) -> DeleteGroupRequest
newDeleteGroupRequest' _GroupName customize = (DeleteGroupRequest <<< customize) { "GroupName": _GroupName }



newtype DeleteInstanceProfileRequest = DeleteInstanceProfileRequest 
  { "InstanceProfileName" :: (InstanceProfileNameType')
  }
derive instance newtypeDeleteInstanceProfileRequest :: Newtype DeleteInstanceProfileRequest _
derive instance repGenericDeleteInstanceProfileRequest :: Generic DeleteInstanceProfileRequest _
instance showDeleteInstanceProfileRequest :: Show DeleteInstanceProfileRequest where
  show = genericShow
instance decodeDeleteInstanceProfileRequest :: Decode DeleteInstanceProfileRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteInstanceProfileRequest :: Encode DeleteInstanceProfileRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteInstanceProfileRequest from required parameters
newDeleteInstanceProfileRequest :: InstanceProfileNameType' -> DeleteInstanceProfileRequest
newDeleteInstanceProfileRequest _InstanceProfileName = DeleteInstanceProfileRequest { "InstanceProfileName": _InstanceProfileName }

-- | Constructs DeleteInstanceProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteInstanceProfileRequest' :: InstanceProfileNameType' -> ( { "InstanceProfileName" :: (InstanceProfileNameType') } -> {"InstanceProfileName" :: (InstanceProfileNameType') } ) -> DeleteInstanceProfileRequest
newDeleteInstanceProfileRequest' _InstanceProfileName customize = (DeleteInstanceProfileRequest <<< customize) { "InstanceProfileName": _InstanceProfileName }



newtype DeleteLoginProfileRequest = DeleteLoginProfileRequest 
  { "UserName" :: (UserNameType')
  }
derive instance newtypeDeleteLoginProfileRequest :: Newtype DeleteLoginProfileRequest _
derive instance repGenericDeleteLoginProfileRequest :: Generic DeleteLoginProfileRequest _
instance showDeleteLoginProfileRequest :: Show DeleteLoginProfileRequest where
  show = genericShow
instance decodeDeleteLoginProfileRequest :: Decode DeleteLoginProfileRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteLoginProfileRequest :: Encode DeleteLoginProfileRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteLoginProfileRequest from required parameters
newDeleteLoginProfileRequest :: UserNameType' -> DeleteLoginProfileRequest
newDeleteLoginProfileRequest _UserName = DeleteLoginProfileRequest { "UserName": _UserName }

-- | Constructs DeleteLoginProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteLoginProfileRequest' :: UserNameType' -> ( { "UserName" :: (UserNameType') } -> {"UserName" :: (UserNameType') } ) -> DeleteLoginProfileRequest
newDeleteLoginProfileRequest' _UserName customize = (DeleteLoginProfileRequest <<< customize) { "UserName": _UserName }



newtype DeleteOpenIDConnectProviderRequest = DeleteOpenIDConnectProviderRequest 
  { "OpenIDConnectProviderArn" :: (ArnType')
  }
derive instance newtypeDeleteOpenIDConnectProviderRequest :: Newtype DeleteOpenIDConnectProviderRequest _
derive instance repGenericDeleteOpenIDConnectProviderRequest :: Generic DeleteOpenIDConnectProviderRequest _
instance showDeleteOpenIDConnectProviderRequest :: Show DeleteOpenIDConnectProviderRequest where
  show = genericShow
instance decodeDeleteOpenIDConnectProviderRequest :: Decode DeleteOpenIDConnectProviderRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteOpenIDConnectProviderRequest :: Encode DeleteOpenIDConnectProviderRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteOpenIDConnectProviderRequest from required parameters
newDeleteOpenIDConnectProviderRequest :: ArnType' -> DeleteOpenIDConnectProviderRequest
newDeleteOpenIDConnectProviderRequest _OpenIDConnectProviderArn = DeleteOpenIDConnectProviderRequest { "OpenIDConnectProviderArn": _OpenIDConnectProviderArn }

-- | Constructs DeleteOpenIDConnectProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteOpenIDConnectProviderRequest' :: ArnType' -> ( { "OpenIDConnectProviderArn" :: (ArnType') } -> {"OpenIDConnectProviderArn" :: (ArnType') } ) -> DeleteOpenIDConnectProviderRequest
newDeleteOpenIDConnectProviderRequest' _OpenIDConnectProviderArn customize = (DeleteOpenIDConnectProviderRequest <<< customize) { "OpenIDConnectProviderArn": _OpenIDConnectProviderArn }



newtype DeletePolicyRequest = DeletePolicyRequest 
  { "PolicyArn" :: (ArnType')
  }
derive instance newtypeDeletePolicyRequest :: Newtype DeletePolicyRequest _
derive instance repGenericDeletePolicyRequest :: Generic DeletePolicyRequest _
instance showDeletePolicyRequest :: Show DeletePolicyRequest where
  show = genericShow
instance decodeDeletePolicyRequest :: Decode DeletePolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeletePolicyRequest :: Encode DeletePolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeletePolicyRequest from required parameters
newDeletePolicyRequest :: ArnType' -> DeletePolicyRequest
newDeletePolicyRequest _PolicyArn = DeletePolicyRequest { "PolicyArn": _PolicyArn }

-- | Constructs DeletePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeletePolicyRequest' :: ArnType' -> ( { "PolicyArn" :: (ArnType') } -> {"PolicyArn" :: (ArnType') } ) -> DeletePolicyRequest
newDeletePolicyRequest' _PolicyArn customize = (DeletePolicyRequest <<< customize) { "PolicyArn": _PolicyArn }



newtype DeletePolicyVersionRequest = DeletePolicyVersionRequest 
  { "PolicyArn" :: (ArnType')
  , "VersionId" :: (PolicyVersionIdType')
  }
derive instance newtypeDeletePolicyVersionRequest :: Newtype DeletePolicyVersionRequest _
derive instance repGenericDeletePolicyVersionRequest :: Generic DeletePolicyVersionRequest _
instance showDeletePolicyVersionRequest :: Show DeletePolicyVersionRequest where
  show = genericShow
instance decodeDeletePolicyVersionRequest :: Decode DeletePolicyVersionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeletePolicyVersionRequest :: Encode DeletePolicyVersionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeletePolicyVersionRequest from required parameters
newDeletePolicyVersionRequest :: ArnType' -> PolicyVersionIdType' -> DeletePolicyVersionRequest
newDeletePolicyVersionRequest _PolicyArn _VersionId = DeletePolicyVersionRequest { "PolicyArn": _PolicyArn, "VersionId": _VersionId }

-- | Constructs DeletePolicyVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeletePolicyVersionRequest' :: ArnType' -> PolicyVersionIdType' -> ( { "PolicyArn" :: (ArnType') , "VersionId" :: (PolicyVersionIdType') } -> {"PolicyArn" :: (ArnType') , "VersionId" :: (PolicyVersionIdType') } ) -> DeletePolicyVersionRequest
newDeletePolicyVersionRequest' _PolicyArn _VersionId customize = (DeletePolicyVersionRequest <<< customize) { "PolicyArn": _PolicyArn, "VersionId": _VersionId }



newtype DeleteRolePolicyRequest = DeleteRolePolicyRequest 
  { "RoleName" :: (RoleNameType')
  , "PolicyName" :: (PolicyNameType')
  }
derive instance newtypeDeleteRolePolicyRequest :: Newtype DeleteRolePolicyRequest _
derive instance repGenericDeleteRolePolicyRequest :: Generic DeleteRolePolicyRequest _
instance showDeleteRolePolicyRequest :: Show DeleteRolePolicyRequest where
  show = genericShow
instance decodeDeleteRolePolicyRequest :: Decode DeleteRolePolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteRolePolicyRequest :: Encode DeleteRolePolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteRolePolicyRequest from required parameters
newDeleteRolePolicyRequest :: PolicyNameType' -> RoleNameType' -> DeleteRolePolicyRequest
newDeleteRolePolicyRequest _PolicyName _RoleName = DeleteRolePolicyRequest { "PolicyName": _PolicyName, "RoleName": _RoleName }

-- | Constructs DeleteRolePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRolePolicyRequest' :: PolicyNameType' -> RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "PolicyName" :: (PolicyNameType') } -> {"RoleName" :: (RoleNameType') , "PolicyName" :: (PolicyNameType') } ) -> DeleteRolePolicyRequest
newDeleteRolePolicyRequest' _PolicyName _RoleName customize = (DeleteRolePolicyRequest <<< customize) { "PolicyName": _PolicyName, "RoleName": _RoleName }



newtype DeleteRoleRequest = DeleteRoleRequest 
  { "RoleName" :: (RoleNameType')
  }
derive instance newtypeDeleteRoleRequest :: Newtype DeleteRoleRequest _
derive instance repGenericDeleteRoleRequest :: Generic DeleteRoleRequest _
instance showDeleteRoleRequest :: Show DeleteRoleRequest where
  show = genericShow
instance decodeDeleteRoleRequest :: Decode DeleteRoleRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteRoleRequest :: Encode DeleteRoleRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteRoleRequest from required parameters
newDeleteRoleRequest :: RoleNameType' -> DeleteRoleRequest
newDeleteRoleRequest _RoleName = DeleteRoleRequest { "RoleName": _RoleName }

-- | Constructs DeleteRoleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteRoleRequest' :: RoleNameType' -> ( { "RoleName" :: (RoleNameType') } -> {"RoleName" :: (RoleNameType') } ) -> DeleteRoleRequest
newDeleteRoleRequest' _RoleName customize = (DeleteRoleRequest <<< customize) { "RoleName": _RoleName }



newtype DeleteSAMLProviderRequest = DeleteSAMLProviderRequest 
  { "SAMLProviderArn" :: (ArnType')
  }
derive instance newtypeDeleteSAMLProviderRequest :: Newtype DeleteSAMLProviderRequest _
derive instance repGenericDeleteSAMLProviderRequest :: Generic DeleteSAMLProviderRequest _
instance showDeleteSAMLProviderRequest :: Show DeleteSAMLProviderRequest where
  show = genericShow
instance decodeDeleteSAMLProviderRequest :: Decode DeleteSAMLProviderRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteSAMLProviderRequest :: Encode DeleteSAMLProviderRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteSAMLProviderRequest from required parameters
newDeleteSAMLProviderRequest :: ArnType' -> DeleteSAMLProviderRequest
newDeleteSAMLProviderRequest _SAMLProviderArn = DeleteSAMLProviderRequest { "SAMLProviderArn": _SAMLProviderArn }

-- | Constructs DeleteSAMLProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteSAMLProviderRequest' :: ArnType' -> ( { "SAMLProviderArn" :: (ArnType') } -> {"SAMLProviderArn" :: (ArnType') } ) -> DeleteSAMLProviderRequest
newDeleteSAMLProviderRequest' _SAMLProviderArn customize = (DeleteSAMLProviderRequest <<< customize) { "SAMLProviderArn": _SAMLProviderArn }



newtype DeleteSSHPublicKeyRequest = DeleteSSHPublicKeyRequest 
  { "UserName" :: (UserNameType')
  , "SSHPublicKeyId" :: (PublicKeyIdType')
  }
derive instance newtypeDeleteSSHPublicKeyRequest :: Newtype DeleteSSHPublicKeyRequest _
derive instance repGenericDeleteSSHPublicKeyRequest :: Generic DeleteSSHPublicKeyRequest _
instance showDeleteSSHPublicKeyRequest :: Show DeleteSSHPublicKeyRequest where
  show = genericShow
instance decodeDeleteSSHPublicKeyRequest :: Decode DeleteSSHPublicKeyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteSSHPublicKeyRequest :: Encode DeleteSSHPublicKeyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteSSHPublicKeyRequest from required parameters
newDeleteSSHPublicKeyRequest :: PublicKeyIdType' -> UserNameType' -> DeleteSSHPublicKeyRequest
newDeleteSSHPublicKeyRequest _SSHPublicKeyId _UserName = DeleteSSHPublicKeyRequest { "SSHPublicKeyId": _SSHPublicKeyId, "UserName": _UserName }

-- | Constructs DeleteSSHPublicKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteSSHPublicKeyRequest' :: PublicKeyIdType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') } -> {"UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') } ) -> DeleteSSHPublicKeyRequest
newDeleteSSHPublicKeyRequest' _SSHPublicKeyId _UserName customize = (DeleteSSHPublicKeyRequest <<< customize) { "SSHPublicKeyId": _SSHPublicKeyId, "UserName": _UserName }



newtype DeleteServerCertificateRequest = DeleteServerCertificateRequest 
  { "ServerCertificateName" :: (ServerCertificateNameType')
  }
derive instance newtypeDeleteServerCertificateRequest :: Newtype DeleteServerCertificateRequest _
derive instance repGenericDeleteServerCertificateRequest :: Generic DeleteServerCertificateRequest _
instance showDeleteServerCertificateRequest :: Show DeleteServerCertificateRequest where
  show = genericShow
instance decodeDeleteServerCertificateRequest :: Decode DeleteServerCertificateRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteServerCertificateRequest :: Encode DeleteServerCertificateRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteServerCertificateRequest from required parameters
newDeleteServerCertificateRequest :: ServerCertificateNameType' -> DeleteServerCertificateRequest
newDeleteServerCertificateRequest _ServerCertificateName = DeleteServerCertificateRequest { "ServerCertificateName": _ServerCertificateName }

-- | Constructs DeleteServerCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteServerCertificateRequest' :: ServerCertificateNameType' -> ( { "ServerCertificateName" :: (ServerCertificateNameType') } -> {"ServerCertificateName" :: (ServerCertificateNameType') } ) -> DeleteServerCertificateRequest
newDeleteServerCertificateRequest' _ServerCertificateName customize = (DeleteServerCertificateRequest <<< customize) { "ServerCertificateName": _ServerCertificateName }



newtype DeleteServiceLinkedRoleRequest = DeleteServiceLinkedRoleRequest 
  { "RoleName" :: (RoleNameType')
  }
derive instance newtypeDeleteServiceLinkedRoleRequest :: Newtype DeleteServiceLinkedRoleRequest _
derive instance repGenericDeleteServiceLinkedRoleRequest :: Generic DeleteServiceLinkedRoleRequest _
instance showDeleteServiceLinkedRoleRequest :: Show DeleteServiceLinkedRoleRequest where
  show = genericShow
instance decodeDeleteServiceLinkedRoleRequest :: Decode DeleteServiceLinkedRoleRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteServiceLinkedRoleRequest :: Encode DeleteServiceLinkedRoleRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteServiceLinkedRoleRequest from required parameters
newDeleteServiceLinkedRoleRequest :: RoleNameType' -> DeleteServiceLinkedRoleRequest
newDeleteServiceLinkedRoleRequest _RoleName = DeleteServiceLinkedRoleRequest { "RoleName": _RoleName }

-- | Constructs DeleteServiceLinkedRoleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteServiceLinkedRoleRequest' :: RoleNameType' -> ( { "RoleName" :: (RoleNameType') } -> {"RoleName" :: (RoleNameType') } ) -> DeleteServiceLinkedRoleRequest
newDeleteServiceLinkedRoleRequest' _RoleName customize = (DeleteServiceLinkedRoleRequest <<< customize) { "RoleName": _RoleName }



newtype DeleteServiceLinkedRoleResponse = DeleteServiceLinkedRoleResponse 
  { "DeletionTaskId" :: (DeletionTaskIdType)
  }
derive instance newtypeDeleteServiceLinkedRoleResponse :: Newtype DeleteServiceLinkedRoleResponse _
derive instance repGenericDeleteServiceLinkedRoleResponse :: Generic DeleteServiceLinkedRoleResponse _
instance showDeleteServiceLinkedRoleResponse :: Show DeleteServiceLinkedRoleResponse where
  show = genericShow
instance decodeDeleteServiceLinkedRoleResponse :: Decode DeleteServiceLinkedRoleResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteServiceLinkedRoleResponse :: Encode DeleteServiceLinkedRoleResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteServiceLinkedRoleResponse from required parameters
newDeleteServiceLinkedRoleResponse :: DeletionTaskIdType -> DeleteServiceLinkedRoleResponse
newDeleteServiceLinkedRoleResponse _DeletionTaskId = DeleteServiceLinkedRoleResponse { "DeletionTaskId": _DeletionTaskId }

-- | Constructs DeleteServiceLinkedRoleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteServiceLinkedRoleResponse' :: DeletionTaskIdType -> ( { "DeletionTaskId" :: (DeletionTaskIdType) } -> {"DeletionTaskId" :: (DeletionTaskIdType) } ) -> DeleteServiceLinkedRoleResponse
newDeleteServiceLinkedRoleResponse' _DeletionTaskId customize = (DeleteServiceLinkedRoleResponse <<< customize) { "DeletionTaskId": _DeletionTaskId }



newtype DeleteServiceSpecificCredentialRequest = DeleteServiceSpecificCredentialRequest 
  { "UserName" :: NullOrUndefined.NullOrUndefined (UserNameType')
  , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId')
  }
derive instance newtypeDeleteServiceSpecificCredentialRequest :: Newtype DeleteServiceSpecificCredentialRequest _
derive instance repGenericDeleteServiceSpecificCredentialRequest :: Generic DeleteServiceSpecificCredentialRequest _
instance showDeleteServiceSpecificCredentialRequest :: Show DeleteServiceSpecificCredentialRequest where
  show = genericShow
instance decodeDeleteServiceSpecificCredentialRequest :: Decode DeleteServiceSpecificCredentialRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteServiceSpecificCredentialRequest :: Encode DeleteServiceSpecificCredentialRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteServiceSpecificCredentialRequest from required parameters
newDeleteServiceSpecificCredentialRequest :: ServiceSpecificCredentialId' -> DeleteServiceSpecificCredentialRequest
newDeleteServiceSpecificCredentialRequest _ServiceSpecificCredentialId = DeleteServiceSpecificCredentialRequest { "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "UserName": (NullOrUndefined Nothing) }

-- | Constructs DeleteServiceSpecificCredentialRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteServiceSpecificCredentialRequest' :: ServiceSpecificCredentialId' -> ( { "UserName" :: NullOrUndefined.NullOrUndefined (UserNameType') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') } -> {"UserName" :: NullOrUndefined.NullOrUndefined (UserNameType') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') } ) -> DeleteServiceSpecificCredentialRequest
newDeleteServiceSpecificCredentialRequest' _ServiceSpecificCredentialId customize = (DeleteServiceSpecificCredentialRequest <<< customize) { "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "UserName": (NullOrUndefined Nothing) }



newtype DeleteSigningCertificateRequest = DeleteSigningCertificateRequest 
  { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType')
  , "CertificateId" :: (CertificateIdType')
  }
derive instance newtypeDeleteSigningCertificateRequest :: Newtype DeleteSigningCertificateRequest _
derive instance repGenericDeleteSigningCertificateRequest :: Generic DeleteSigningCertificateRequest _
instance showDeleteSigningCertificateRequest :: Show DeleteSigningCertificateRequest where
  show = genericShow
instance decodeDeleteSigningCertificateRequest :: Decode DeleteSigningCertificateRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteSigningCertificateRequest :: Encode DeleteSigningCertificateRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteSigningCertificateRequest from required parameters
newDeleteSigningCertificateRequest :: CertificateIdType' -> DeleteSigningCertificateRequest
newDeleteSigningCertificateRequest _CertificateId = DeleteSigningCertificateRequest { "CertificateId": _CertificateId, "UserName": (NullOrUndefined Nothing) }

-- | Constructs DeleteSigningCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteSigningCertificateRequest' :: CertificateIdType' -> ( { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') , "CertificateId" :: (CertificateIdType') } -> {"UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') , "CertificateId" :: (CertificateIdType') } ) -> DeleteSigningCertificateRequest
newDeleteSigningCertificateRequest' _CertificateId customize = (DeleteSigningCertificateRequest <<< customize) { "CertificateId": _CertificateId, "UserName": (NullOrUndefined Nothing) }



newtype DeleteUserPolicyRequest = DeleteUserPolicyRequest 
  { "UserName" :: (ExistingUserNameType')
  , "PolicyName" :: (PolicyNameType')
  }
derive instance newtypeDeleteUserPolicyRequest :: Newtype DeleteUserPolicyRequest _
derive instance repGenericDeleteUserPolicyRequest :: Generic DeleteUserPolicyRequest _
instance showDeleteUserPolicyRequest :: Show DeleteUserPolicyRequest where
  show = genericShow
instance decodeDeleteUserPolicyRequest :: Decode DeleteUserPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteUserPolicyRequest :: Encode DeleteUserPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteUserPolicyRequest from required parameters
newDeleteUserPolicyRequest :: PolicyNameType' -> ExistingUserNameType' -> DeleteUserPolicyRequest
newDeleteUserPolicyRequest _PolicyName _UserName = DeleteUserPolicyRequest { "PolicyName": _PolicyName, "UserName": _UserName }

-- | Constructs DeleteUserPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteUserPolicyRequest' :: PolicyNameType' -> ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "PolicyName" :: (PolicyNameType') } -> {"UserName" :: (ExistingUserNameType') , "PolicyName" :: (PolicyNameType') } ) -> DeleteUserPolicyRequest
newDeleteUserPolicyRequest' _PolicyName _UserName customize = (DeleteUserPolicyRequest <<< customize) { "PolicyName": _PolicyName, "UserName": _UserName }



newtype DeleteUserRequest = DeleteUserRequest 
  { "UserName" :: (ExistingUserNameType')
  }
derive instance newtypeDeleteUserRequest :: Newtype DeleteUserRequest _
derive instance repGenericDeleteUserRequest :: Generic DeleteUserRequest _
instance showDeleteUserRequest :: Show DeleteUserRequest where
  show = genericShow
instance decodeDeleteUserRequest :: Decode DeleteUserRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteUserRequest :: Encode DeleteUserRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteUserRequest from required parameters
newDeleteUserRequest :: ExistingUserNameType' -> DeleteUserRequest
newDeleteUserRequest _UserName = DeleteUserRequest { "UserName": _UserName }

-- | Constructs DeleteUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteUserRequest' :: ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') } -> {"UserName" :: (ExistingUserNameType') } ) -> DeleteUserRequest
newDeleteUserRequest' _UserName customize = (DeleteUserRequest <<< customize) { "UserName": _UserName }



newtype DeleteVirtualMFADeviceRequest = DeleteVirtualMFADeviceRequest 
  { "SerialNumber" :: (SerialNumberType')
  }
derive instance newtypeDeleteVirtualMFADeviceRequest :: Newtype DeleteVirtualMFADeviceRequest _
derive instance repGenericDeleteVirtualMFADeviceRequest :: Generic DeleteVirtualMFADeviceRequest _
instance showDeleteVirtualMFADeviceRequest :: Show DeleteVirtualMFADeviceRequest where
  show = genericShow
instance decodeDeleteVirtualMFADeviceRequest :: Decode DeleteVirtualMFADeviceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteVirtualMFADeviceRequest :: Encode DeleteVirtualMFADeviceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteVirtualMFADeviceRequest from required parameters
newDeleteVirtualMFADeviceRequest :: SerialNumberType' -> DeleteVirtualMFADeviceRequest
newDeleteVirtualMFADeviceRequest _SerialNumber = DeleteVirtualMFADeviceRequest { "SerialNumber": _SerialNumber }

-- | Constructs DeleteVirtualMFADeviceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteVirtualMFADeviceRequest' :: SerialNumberType' -> ( { "SerialNumber" :: (SerialNumberType') } -> {"SerialNumber" :: (SerialNumberType') } ) -> DeleteVirtualMFADeviceRequest
newDeleteVirtualMFADeviceRequest' _SerialNumber customize = (DeleteVirtualMFADeviceRequest <<< customize) { "SerialNumber": _SerialNumber }



-- | <p>The reason that the service-linked role deletion failed.</p> <p>This data type is used as a response element in the <a>GetServiceLinkedRoleDeletionStatus</a> operation.</p>
newtype DeletionTaskFailureReasonType = DeletionTaskFailureReasonType 
  { "Reason" :: NullOrUndefined.NullOrUndefined (ReasonType)
  , "RoleUsageList" :: NullOrUndefined.NullOrUndefined (RoleUsageListType)
  }
derive instance newtypeDeletionTaskFailureReasonType :: Newtype DeletionTaskFailureReasonType _
derive instance repGenericDeletionTaskFailureReasonType :: Generic DeletionTaskFailureReasonType _
instance showDeletionTaskFailureReasonType :: Show DeletionTaskFailureReasonType where
  show = genericShow
instance decodeDeletionTaskFailureReasonType :: Decode DeletionTaskFailureReasonType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeletionTaskFailureReasonType :: Encode DeletionTaskFailureReasonType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeletionTaskFailureReasonType from required parameters
newDeletionTaskFailureReasonType :: DeletionTaskFailureReasonType
newDeletionTaskFailureReasonType  = DeletionTaskFailureReasonType { "Reason": (NullOrUndefined Nothing), "RoleUsageList": (NullOrUndefined Nothing) }

-- | Constructs DeletionTaskFailureReasonType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeletionTaskFailureReasonType' :: ( { "Reason" :: NullOrUndefined.NullOrUndefined (ReasonType) , "RoleUsageList" :: NullOrUndefined.NullOrUndefined (RoleUsageListType) } -> {"Reason" :: NullOrUndefined.NullOrUndefined (ReasonType) , "RoleUsageList" :: NullOrUndefined.NullOrUndefined (RoleUsageListType) } ) -> DeletionTaskFailureReasonType
newDeletionTaskFailureReasonType'  customize = (DeletionTaskFailureReasonType <<< customize) { "Reason": (NullOrUndefined Nothing), "RoleUsageList": (NullOrUndefined Nothing) }



newtype DeletionTaskIdType = DeletionTaskIdType String
derive instance newtypeDeletionTaskIdType :: Newtype DeletionTaskIdType _
derive instance repGenericDeletionTaskIdType :: Generic DeletionTaskIdType _
instance showDeletionTaskIdType :: Show DeletionTaskIdType where
  show = genericShow
instance decodeDeletionTaskIdType :: Decode DeletionTaskIdType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeletionTaskIdType :: Encode DeletionTaskIdType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeletionTaskStatusType = DeletionTaskStatusType String
derive instance newtypeDeletionTaskStatusType :: Newtype DeletionTaskStatusType _
derive instance repGenericDeletionTaskStatusType :: Generic DeletionTaskStatusType _
instance showDeletionTaskStatusType :: Show DeletionTaskStatusType where
  show = genericShow
instance decodeDeletionTaskStatusType :: Decode DeletionTaskStatusType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeletionTaskStatusType :: Encode DeletionTaskStatusType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DetachGroupPolicyRequest = DetachGroupPolicyRequest 
  { "GroupName" :: (GroupNameType')
  , "PolicyArn" :: (ArnType')
  }
derive instance newtypeDetachGroupPolicyRequest :: Newtype DetachGroupPolicyRequest _
derive instance repGenericDetachGroupPolicyRequest :: Generic DetachGroupPolicyRequest _
instance showDetachGroupPolicyRequest :: Show DetachGroupPolicyRequest where
  show = genericShow
instance decodeDetachGroupPolicyRequest :: Decode DetachGroupPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDetachGroupPolicyRequest :: Encode DetachGroupPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DetachGroupPolicyRequest from required parameters
newDetachGroupPolicyRequest :: GroupNameType' -> ArnType' -> DetachGroupPolicyRequest
newDetachGroupPolicyRequest _GroupName _PolicyArn = DetachGroupPolicyRequest { "GroupName": _GroupName, "PolicyArn": _PolicyArn }

-- | Constructs DetachGroupPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetachGroupPolicyRequest' :: GroupNameType' -> ArnType' -> ( { "GroupName" :: (GroupNameType') , "PolicyArn" :: (ArnType') } -> {"GroupName" :: (GroupNameType') , "PolicyArn" :: (ArnType') } ) -> DetachGroupPolicyRequest
newDetachGroupPolicyRequest' _GroupName _PolicyArn customize = (DetachGroupPolicyRequest <<< customize) { "GroupName": _GroupName, "PolicyArn": _PolicyArn }



newtype DetachRolePolicyRequest = DetachRolePolicyRequest 
  { "RoleName" :: (RoleNameType')
  , "PolicyArn" :: (ArnType')
  }
derive instance newtypeDetachRolePolicyRequest :: Newtype DetachRolePolicyRequest _
derive instance repGenericDetachRolePolicyRequest :: Generic DetachRolePolicyRequest _
instance showDetachRolePolicyRequest :: Show DetachRolePolicyRequest where
  show = genericShow
instance decodeDetachRolePolicyRequest :: Decode DetachRolePolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDetachRolePolicyRequest :: Encode DetachRolePolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DetachRolePolicyRequest from required parameters
newDetachRolePolicyRequest :: ArnType' -> RoleNameType' -> DetachRolePolicyRequest
newDetachRolePolicyRequest _PolicyArn _RoleName = DetachRolePolicyRequest { "PolicyArn": _PolicyArn, "RoleName": _RoleName }

-- | Constructs DetachRolePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetachRolePolicyRequest' :: ArnType' -> RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "PolicyArn" :: (ArnType') } -> {"RoleName" :: (RoleNameType') , "PolicyArn" :: (ArnType') } ) -> DetachRolePolicyRequest
newDetachRolePolicyRequest' _PolicyArn _RoleName customize = (DetachRolePolicyRequest <<< customize) { "PolicyArn": _PolicyArn, "RoleName": _RoleName }



newtype DetachUserPolicyRequest = DetachUserPolicyRequest 
  { "UserName" :: (UserNameType')
  , "PolicyArn" :: (ArnType')
  }
derive instance newtypeDetachUserPolicyRequest :: Newtype DetachUserPolicyRequest _
derive instance repGenericDetachUserPolicyRequest :: Generic DetachUserPolicyRequest _
instance showDetachUserPolicyRequest :: Show DetachUserPolicyRequest where
  show = genericShow
instance decodeDetachUserPolicyRequest :: Decode DetachUserPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDetachUserPolicyRequest :: Encode DetachUserPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DetachUserPolicyRequest from required parameters
newDetachUserPolicyRequest :: ArnType' -> UserNameType' -> DetachUserPolicyRequest
newDetachUserPolicyRequest _PolicyArn _UserName = DetachUserPolicyRequest { "PolicyArn": _PolicyArn, "UserName": _UserName }

-- | Constructs DetachUserPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetachUserPolicyRequest' :: ArnType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "PolicyArn" :: (ArnType') } -> {"UserName" :: (UserNameType') , "PolicyArn" :: (ArnType') } ) -> DetachUserPolicyRequest
newDetachUserPolicyRequest' _PolicyArn _UserName customize = (DetachUserPolicyRequest <<< customize) { "PolicyArn": _PolicyArn, "UserName": _UserName }



-- | <p>The request was rejected because the same certificate is associated with an IAM user in the account.</p>
newtype DuplicateCertificateException = DuplicateCertificateException 
  { "message" :: NullOrUndefined.NullOrUndefined (DuplicateCertificateMessage')
  }
derive instance newtypeDuplicateCertificateException :: Newtype DuplicateCertificateException _
derive instance repGenericDuplicateCertificateException :: Generic DuplicateCertificateException _
instance showDuplicateCertificateException :: Show DuplicateCertificateException where
  show = genericShow
instance decodeDuplicateCertificateException :: Decode DuplicateCertificateException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDuplicateCertificateException :: Encode DuplicateCertificateException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DuplicateCertificateException from required parameters
newDuplicateCertificateException :: DuplicateCertificateException
newDuplicateCertificateException  = DuplicateCertificateException { "message": (NullOrUndefined Nothing) }

-- | Constructs DuplicateCertificateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicateCertificateException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (DuplicateCertificateMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (DuplicateCertificateMessage') } ) -> DuplicateCertificateException
newDuplicateCertificateException'  customize = (DuplicateCertificateException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the SSH public key is already associated with the specified IAM user.</p>
newtype DuplicateSSHPublicKeyException = DuplicateSSHPublicKeyException 
  { "message" :: NullOrUndefined.NullOrUndefined (DuplicateSSHPublicKeyMessage')
  }
derive instance newtypeDuplicateSSHPublicKeyException :: Newtype DuplicateSSHPublicKeyException _
derive instance repGenericDuplicateSSHPublicKeyException :: Generic DuplicateSSHPublicKeyException _
instance showDuplicateSSHPublicKeyException :: Show DuplicateSSHPublicKeyException where
  show = genericShow
instance decodeDuplicateSSHPublicKeyException :: Decode DuplicateSSHPublicKeyException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDuplicateSSHPublicKeyException :: Encode DuplicateSSHPublicKeyException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DuplicateSSHPublicKeyException from required parameters
newDuplicateSSHPublicKeyException :: DuplicateSSHPublicKeyException
newDuplicateSSHPublicKeyException  = DuplicateSSHPublicKeyException { "message": (NullOrUndefined Nothing) }

-- | Constructs DuplicateSSHPublicKeyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicateSSHPublicKeyException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (DuplicateSSHPublicKeyMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (DuplicateSSHPublicKeyMessage') } ) -> DuplicateSSHPublicKeyException
newDuplicateSSHPublicKeyException'  customize = (DuplicateSSHPublicKeyException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype EnableMFADeviceRequest = EnableMFADeviceRequest 
  { "UserName" :: (ExistingUserNameType')
  , "SerialNumber" :: (SerialNumberType')
  , "AuthenticationCode1" :: (AuthenticationCodeType')
  , "AuthenticationCode2" :: (AuthenticationCodeType')
  }
derive instance newtypeEnableMFADeviceRequest :: Newtype EnableMFADeviceRequest _
derive instance repGenericEnableMFADeviceRequest :: Generic EnableMFADeviceRequest _
instance showEnableMFADeviceRequest :: Show EnableMFADeviceRequest where
  show = genericShow
instance decodeEnableMFADeviceRequest :: Decode EnableMFADeviceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnableMFADeviceRequest :: Encode EnableMFADeviceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EnableMFADeviceRequest from required parameters
newEnableMFADeviceRequest :: AuthenticationCodeType' -> AuthenticationCodeType' -> SerialNumberType' -> ExistingUserNameType' -> EnableMFADeviceRequest
newEnableMFADeviceRequest _AuthenticationCode1 _AuthenticationCode2 _SerialNumber _UserName = EnableMFADeviceRequest { "AuthenticationCode1": _AuthenticationCode1, "AuthenticationCode2": _AuthenticationCode2, "SerialNumber": _SerialNumber, "UserName": _UserName }

-- | Constructs EnableMFADeviceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnableMFADeviceRequest' :: AuthenticationCodeType' -> AuthenticationCodeType' -> SerialNumberType' -> ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "SerialNumber" :: (SerialNumberType') , "AuthenticationCode1" :: (AuthenticationCodeType') , "AuthenticationCode2" :: (AuthenticationCodeType') } -> {"UserName" :: (ExistingUserNameType') , "SerialNumber" :: (SerialNumberType') , "AuthenticationCode1" :: (AuthenticationCodeType') , "AuthenticationCode2" :: (AuthenticationCodeType') } ) -> EnableMFADeviceRequest
newEnableMFADeviceRequest' _AuthenticationCode1 _AuthenticationCode2 _SerialNumber _UserName customize = (EnableMFADeviceRequest <<< customize) { "AuthenticationCode1": _AuthenticationCode1, "AuthenticationCode2": _AuthenticationCode2, "SerialNumber": _SerialNumber, "UserName": _UserName }



-- | <p>The request was rejected because it attempted to create a resource that already exists.</p>
newtype EntityAlreadyExistsException = EntityAlreadyExistsException 
  { "message" :: NullOrUndefined.NullOrUndefined (EntityAlreadyExistsMessage')
  }
derive instance newtypeEntityAlreadyExistsException :: Newtype EntityAlreadyExistsException _
derive instance repGenericEntityAlreadyExistsException :: Generic EntityAlreadyExistsException _
instance showEntityAlreadyExistsException :: Show EntityAlreadyExistsException where
  show = genericShow
instance decodeEntityAlreadyExistsException :: Decode EntityAlreadyExistsException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEntityAlreadyExistsException :: Encode EntityAlreadyExistsException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EntityAlreadyExistsException from required parameters
newEntityAlreadyExistsException :: EntityAlreadyExistsException
newEntityAlreadyExistsException  = EntityAlreadyExistsException { "message": (NullOrUndefined Nothing) }

-- | Constructs EntityAlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEntityAlreadyExistsException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (EntityAlreadyExistsMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (EntityAlreadyExistsMessage') } ) -> EntityAlreadyExistsException
newEntityAlreadyExistsException'  customize = (EntityAlreadyExistsException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because it referenced an entity that is temporarily unmodifiable, such as a user name that was deleted and then recreated. The error indicates that the request is likely to succeed if you try again after waiting several minutes. The error message describes the entity.</p>
newtype EntityTemporarilyUnmodifiableException = EntityTemporarilyUnmodifiableException 
  { "message" :: NullOrUndefined.NullOrUndefined (EntityTemporarilyUnmodifiableMessage')
  }
derive instance newtypeEntityTemporarilyUnmodifiableException :: Newtype EntityTemporarilyUnmodifiableException _
derive instance repGenericEntityTemporarilyUnmodifiableException :: Generic EntityTemporarilyUnmodifiableException _
instance showEntityTemporarilyUnmodifiableException :: Show EntityTemporarilyUnmodifiableException where
  show = genericShow
instance decodeEntityTemporarilyUnmodifiableException :: Decode EntityTemporarilyUnmodifiableException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEntityTemporarilyUnmodifiableException :: Encode EntityTemporarilyUnmodifiableException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EntityTemporarilyUnmodifiableException from required parameters
newEntityTemporarilyUnmodifiableException :: EntityTemporarilyUnmodifiableException
newEntityTemporarilyUnmodifiableException  = EntityTemporarilyUnmodifiableException { "message": (NullOrUndefined Nothing) }

-- | Constructs EntityTemporarilyUnmodifiableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEntityTemporarilyUnmodifiableException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (EntityTemporarilyUnmodifiableMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (EntityTemporarilyUnmodifiableMessage') } ) -> EntityTemporarilyUnmodifiableException
newEntityTemporarilyUnmodifiableException'  customize = (EntityTemporarilyUnmodifiableException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype EntityType = EntityType String
derive instance newtypeEntityType :: Newtype EntityType _
derive instance repGenericEntityType :: Generic EntityType _
instance showEntityType :: Show EntityType where
  show = genericShow
instance decodeEntityType :: Decode EntityType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEntityType :: Encode EntityType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EvalDecisionDetailsType = EvalDecisionDetailsType (StrMap.StrMap PolicyEvaluationDecisionType)
derive instance newtypeEvalDecisionDetailsType :: Newtype EvalDecisionDetailsType _
derive instance repGenericEvalDecisionDetailsType :: Generic EvalDecisionDetailsType _
instance showEvalDecisionDetailsType :: Show EvalDecisionDetailsType where
  show = genericShow
instance decodeEvalDecisionDetailsType :: Decode EvalDecisionDetailsType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEvalDecisionDetailsType :: Encode EvalDecisionDetailsType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EvalDecisionSourceType = EvalDecisionSourceType String
derive instance newtypeEvalDecisionSourceType :: Newtype EvalDecisionSourceType _
derive instance repGenericEvalDecisionSourceType :: Generic EvalDecisionSourceType _
instance showEvalDecisionSourceType :: Show EvalDecisionSourceType where
  show = genericShow
instance decodeEvalDecisionSourceType :: Decode EvalDecisionSourceType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEvalDecisionSourceType :: Encode EvalDecisionSourceType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains the results of a simulation.</p> <p>This data type is used by the return parameter of <code> <a>SimulateCustomPolicy</a> </code> and <code> <a>SimulatePrincipalPolicy</a> </code>.</p>
newtype EvaluationResult = EvaluationResult 
  { "EvalActionName" :: (ActionNameType)
  , "EvalResourceName" :: NullOrUndefined.NullOrUndefined (ResourceNameType)
  , "EvalDecision" :: (PolicyEvaluationDecisionType)
  , "MatchedStatements" :: NullOrUndefined.NullOrUndefined (StatementListType)
  , "MissingContextValues" :: NullOrUndefined.NullOrUndefined (ContextKeyNamesResultListType)
  , "OrganizationsDecisionDetail" :: NullOrUndefined.NullOrUndefined (OrganizationsDecisionDetail)
  , "EvalDecisionDetails" :: NullOrUndefined.NullOrUndefined (EvalDecisionDetailsType)
  , "ResourceSpecificResults" :: NullOrUndefined.NullOrUndefined (ResourceSpecificResultListType)
  }
derive instance newtypeEvaluationResult :: Newtype EvaluationResult _
derive instance repGenericEvaluationResult :: Generic EvaluationResult _
instance showEvaluationResult :: Show EvaluationResult where
  show = genericShow
instance decodeEvaluationResult :: Decode EvaluationResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEvaluationResult :: Encode EvaluationResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EvaluationResult from required parameters
newEvaluationResult :: ActionNameType -> PolicyEvaluationDecisionType -> EvaluationResult
newEvaluationResult _EvalActionName _EvalDecision = EvaluationResult { "EvalActionName": _EvalActionName, "EvalDecision": _EvalDecision, "EvalDecisionDetails": (NullOrUndefined Nothing), "EvalResourceName": (NullOrUndefined Nothing), "MatchedStatements": (NullOrUndefined Nothing), "MissingContextValues": (NullOrUndefined Nothing), "OrganizationsDecisionDetail": (NullOrUndefined Nothing), "ResourceSpecificResults": (NullOrUndefined Nothing) }

-- | Constructs EvaluationResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEvaluationResult' :: ActionNameType -> PolicyEvaluationDecisionType -> ( { "EvalActionName" :: (ActionNameType) , "EvalResourceName" :: NullOrUndefined.NullOrUndefined (ResourceNameType) , "EvalDecision" :: (PolicyEvaluationDecisionType) , "MatchedStatements" :: NullOrUndefined.NullOrUndefined (StatementListType) , "MissingContextValues" :: NullOrUndefined.NullOrUndefined (ContextKeyNamesResultListType) , "OrganizationsDecisionDetail" :: NullOrUndefined.NullOrUndefined (OrganizationsDecisionDetail) , "EvalDecisionDetails" :: NullOrUndefined.NullOrUndefined (EvalDecisionDetailsType) , "ResourceSpecificResults" :: NullOrUndefined.NullOrUndefined (ResourceSpecificResultListType) } -> {"EvalActionName" :: (ActionNameType) , "EvalResourceName" :: NullOrUndefined.NullOrUndefined (ResourceNameType) , "EvalDecision" :: (PolicyEvaluationDecisionType) , "MatchedStatements" :: NullOrUndefined.NullOrUndefined (StatementListType) , "MissingContextValues" :: NullOrUndefined.NullOrUndefined (ContextKeyNamesResultListType) , "OrganizationsDecisionDetail" :: NullOrUndefined.NullOrUndefined (OrganizationsDecisionDetail) , "EvalDecisionDetails" :: NullOrUndefined.NullOrUndefined (EvalDecisionDetailsType) , "ResourceSpecificResults" :: NullOrUndefined.NullOrUndefined (ResourceSpecificResultListType) } ) -> EvaluationResult
newEvaluationResult' _EvalActionName _EvalDecision customize = (EvaluationResult <<< customize) { "EvalActionName": _EvalActionName, "EvalDecision": _EvalDecision, "EvalDecisionDetails": (NullOrUndefined Nothing), "EvalResourceName": (NullOrUndefined Nothing), "MatchedStatements": (NullOrUndefined Nothing), "MissingContextValues": (NullOrUndefined Nothing), "OrganizationsDecisionDetail": (NullOrUndefined Nothing), "ResourceSpecificResults": (NullOrUndefined Nothing) }



newtype EvaluationResultsListType = EvaluationResultsListType (Array EvaluationResult)
derive instance newtypeEvaluationResultsListType :: Newtype EvaluationResultsListType _
derive instance repGenericEvaluationResultsListType :: Generic EvaluationResultsListType _
instance showEvaluationResultsListType :: Show EvaluationResultsListType where
  show = genericShow
instance decodeEvaluationResultsListType :: Decode EvaluationResultsListType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEvaluationResultsListType :: Encode EvaluationResultsListType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains the response to a successful <a>GenerateCredentialReport</a> request. </p>
newtype GenerateCredentialReportResponse = GenerateCredentialReportResponse 
  { "State" :: NullOrUndefined.NullOrUndefined (ReportStateType)
  , "Description" :: NullOrUndefined.NullOrUndefined (ReportStateDescriptionType)
  }
derive instance newtypeGenerateCredentialReportResponse :: Newtype GenerateCredentialReportResponse _
derive instance repGenericGenerateCredentialReportResponse :: Generic GenerateCredentialReportResponse _
instance showGenerateCredentialReportResponse :: Show GenerateCredentialReportResponse where
  show = genericShow
instance decodeGenerateCredentialReportResponse :: Decode GenerateCredentialReportResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGenerateCredentialReportResponse :: Encode GenerateCredentialReportResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GenerateCredentialReportResponse from required parameters
newGenerateCredentialReportResponse :: GenerateCredentialReportResponse
newGenerateCredentialReportResponse  = GenerateCredentialReportResponse { "Description": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing) }

-- | Constructs GenerateCredentialReportResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateCredentialReportResponse' :: ( { "State" :: NullOrUndefined.NullOrUndefined (ReportStateType) , "Description" :: NullOrUndefined.NullOrUndefined (ReportStateDescriptionType) } -> {"State" :: NullOrUndefined.NullOrUndefined (ReportStateType) , "Description" :: NullOrUndefined.NullOrUndefined (ReportStateDescriptionType) } ) -> GenerateCredentialReportResponse
newGenerateCredentialReportResponse'  customize = (GenerateCredentialReportResponse <<< customize) { "Description": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing) }



newtype GetAccessKeyLastUsedRequest = GetAccessKeyLastUsedRequest 
  { "AccessKeyId" :: (AccessKeyIdType')
  }
derive instance newtypeGetAccessKeyLastUsedRequest :: Newtype GetAccessKeyLastUsedRequest _
derive instance repGenericGetAccessKeyLastUsedRequest :: Generic GetAccessKeyLastUsedRequest _
instance showGetAccessKeyLastUsedRequest :: Show GetAccessKeyLastUsedRequest where
  show = genericShow
instance decodeGetAccessKeyLastUsedRequest :: Decode GetAccessKeyLastUsedRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetAccessKeyLastUsedRequest :: Encode GetAccessKeyLastUsedRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetAccessKeyLastUsedRequest from required parameters
newGetAccessKeyLastUsedRequest :: AccessKeyIdType' -> GetAccessKeyLastUsedRequest
newGetAccessKeyLastUsedRequest _AccessKeyId = GetAccessKeyLastUsedRequest { "AccessKeyId": _AccessKeyId }

-- | Constructs GetAccessKeyLastUsedRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAccessKeyLastUsedRequest' :: AccessKeyIdType' -> ( { "AccessKeyId" :: (AccessKeyIdType') } -> {"AccessKeyId" :: (AccessKeyIdType') } ) -> GetAccessKeyLastUsedRequest
newGetAccessKeyLastUsedRequest' _AccessKeyId customize = (GetAccessKeyLastUsedRequest <<< customize) { "AccessKeyId": _AccessKeyId }



-- | <p>Contains the response to a successful <a>GetAccessKeyLastUsed</a> request. It is also returned as a member of the <a>AccessKeyMetaData</a> structure returned by the <a>ListAccessKeys</a> action.</p>
newtype GetAccessKeyLastUsedResponse = GetAccessKeyLastUsedResponse 
  { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType')
  , "AccessKeyLastUsed" :: NullOrUndefined.NullOrUndefined (AccessKeyLastUsed)
  }
derive instance newtypeGetAccessKeyLastUsedResponse :: Newtype GetAccessKeyLastUsedResponse _
derive instance repGenericGetAccessKeyLastUsedResponse :: Generic GetAccessKeyLastUsedResponse _
instance showGetAccessKeyLastUsedResponse :: Show GetAccessKeyLastUsedResponse where
  show = genericShow
instance decodeGetAccessKeyLastUsedResponse :: Decode GetAccessKeyLastUsedResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetAccessKeyLastUsedResponse :: Encode GetAccessKeyLastUsedResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetAccessKeyLastUsedResponse from required parameters
newGetAccessKeyLastUsedResponse :: GetAccessKeyLastUsedResponse
newGetAccessKeyLastUsedResponse  = GetAccessKeyLastUsedResponse { "AccessKeyLastUsed": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }

-- | Constructs GetAccessKeyLastUsedResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAccessKeyLastUsedResponse' :: ( { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') , "AccessKeyLastUsed" :: NullOrUndefined.NullOrUndefined (AccessKeyLastUsed) } -> {"UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') , "AccessKeyLastUsed" :: NullOrUndefined.NullOrUndefined (AccessKeyLastUsed) } ) -> GetAccessKeyLastUsedResponse
newGetAccessKeyLastUsedResponse'  customize = (GetAccessKeyLastUsedResponse <<< customize) { "AccessKeyLastUsed": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }



newtype GetAccountAuthorizationDetailsRequest = GetAccountAuthorizationDetailsRequest 
  { "Filter" :: NullOrUndefined.NullOrUndefined (EntityListType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeGetAccountAuthorizationDetailsRequest :: Newtype GetAccountAuthorizationDetailsRequest _
derive instance repGenericGetAccountAuthorizationDetailsRequest :: Generic GetAccountAuthorizationDetailsRequest _
instance showGetAccountAuthorizationDetailsRequest :: Show GetAccountAuthorizationDetailsRequest where
  show = genericShow
instance decodeGetAccountAuthorizationDetailsRequest :: Decode GetAccountAuthorizationDetailsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetAccountAuthorizationDetailsRequest :: Encode GetAccountAuthorizationDetailsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetAccountAuthorizationDetailsRequest from required parameters
newGetAccountAuthorizationDetailsRequest :: GetAccountAuthorizationDetailsRequest
newGetAccountAuthorizationDetailsRequest  = GetAccountAuthorizationDetailsRequest { "Filter": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }

-- | Constructs GetAccountAuthorizationDetailsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAccountAuthorizationDetailsRequest' :: ( { "Filter" :: NullOrUndefined.NullOrUndefined (EntityListType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"Filter" :: NullOrUndefined.NullOrUndefined (EntityListType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> GetAccountAuthorizationDetailsRequest
newGetAccountAuthorizationDetailsRequest'  customize = (GetAccountAuthorizationDetailsRequest <<< customize) { "Filter": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>GetAccountAuthorizationDetails</a> request. </p>
newtype GetAccountAuthorizationDetailsResponse = GetAccountAuthorizationDetailsResponse 
  { "UserDetailList" :: NullOrUndefined.NullOrUndefined (UserDetailListType')
  , "GroupDetailList" :: NullOrUndefined.NullOrUndefined (GroupDetailListType')
  , "RoleDetailList" :: NullOrUndefined.NullOrUndefined (RoleDetailListType')
  , "Policies" :: NullOrUndefined.NullOrUndefined (ManagedPolicyDetailListType)
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeGetAccountAuthorizationDetailsResponse :: Newtype GetAccountAuthorizationDetailsResponse _
derive instance repGenericGetAccountAuthorizationDetailsResponse :: Generic GetAccountAuthorizationDetailsResponse _
instance showGetAccountAuthorizationDetailsResponse :: Show GetAccountAuthorizationDetailsResponse where
  show = genericShow
instance decodeGetAccountAuthorizationDetailsResponse :: Decode GetAccountAuthorizationDetailsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetAccountAuthorizationDetailsResponse :: Encode GetAccountAuthorizationDetailsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetAccountAuthorizationDetailsResponse from required parameters
newGetAccountAuthorizationDetailsResponse :: GetAccountAuthorizationDetailsResponse
newGetAccountAuthorizationDetailsResponse  = GetAccountAuthorizationDetailsResponse { "GroupDetailList": (NullOrUndefined Nothing), "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "Policies": (NullOrUndefined Nothing), "RoleDetailList": (NullOrUndefined Nothing), "UserDetailList": (NullOrUndefined Nothing) }

-- | Constructs GetAccountAuthorizationDetailsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAccountAuthorizationDetailsResponse' :: ( { "UserDetailList" :: NullOrUndefined.NullOrUndefined (UserDetailListType') , "GroupDetailList" :: NullOrUndefined.NullOrUndefined (GroupDetailListType') , "RoleDetailList" :: NullOrUndefined.NullOrUndefined (RoleDetailListType') , "Policies" :: NullOrUndefined.NullOrUndefined (ManagedPolicyDetailListType) , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"UserDetailList" :: NullOrUndefined.NullOrUndefined (UserDetailListType') , "GroupDetailList" :: NullOrUndefined.NullOrUndefined (GroupDetailListType') , "RoleDetailList" :: NullOrUndefined.NullOrUndefined (RoleDetailListType') , "Policies" :: NullOrUndefined.NullOrUndefined (ManagedPolicyDetailListType) , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> GetAccountAuthorizationDetailsResponse
newGetAccountAuthorizationDetailsResponse'  customize = (GetAccountAuthorizationDetailsResponse <<< customize) { "GroupDetailList": (NullOrUndefined Nothing), "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "Policies": (NullOrUndefined Nothing), "RoleDetailList": (NullOrUndefined Nothing), "UserDetailList": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>GetAccountPasswordPolicy</a> request. </p>
newtype GetAccountPasswordPolicyResponse = GetAccountPasswordPolicyResponse 
  { "PasswordPolicy" :: (PasswordPolicy)
  }
derive instance newtypeGetAccountPasswordPolicyResponse :: Newtype GetAccountPasswordPolicyResponse _
derive instance repGenericGetAccountPasswordPolicyResponse :: Generic GetAccountPasswordPolicyResponse _
instance showGetAccountPasswordPolicyResponse :: Show GetAccountPasswordPolicyResponse where
  show = genericShow
instance decodeGetAccountPasswordPolicyResponse :: Decode GetAccountPasswordPolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetAccountPasswordPolicyResponse :: Encode GetAccountPasswordPolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetAccountPasswordPolicyResponse from required parameters
newGetAccountPasswordPolicyResponse :: PasswordPolicy -> GetAccountPasswordPolicyResponse
newGetAccountPasswordPolicyResponse _PasswordPolicy = GetAccountPasswordPolicyResponse { "PasswordPolicy": _PasswordPolicy }

-- | Constructs GetAccountPasswordPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAccountPasswordPolicyResponse' :: PasswordPolicy -> ( { "PasswordPolicy" :: (PasswordPolicy) } -> {"PasswordPolicy" :: (PasswordPolicy) } ) -> GetAccountPasswordPolicyResponse
newGetAccountPasswordPolicyResponse' _PasswordPolicy customize = (GetAccountPasswordPolicyResponse <<< customize) { "PasswordPolicy": _PasswordPolicy }



-- | <p>Contains the response to a successful <a>GetAccountSummary</a> request. </p>
newtype GetAccountSummaryResponse = GetAccountSummaryResponse 
  { "SummaryMap" :: NullOrUndefined.NullOrUndefined (SummaryMapType')
  }
derive instance newtypeGetAccountSummaryResponse :: Newtype GetAccountSummaryResponse _
derive instance repGenericGetAccountSummaryResponse :: Generic GetAccountSummaryResponse _
instance showGetAccountSummaryResponse :: Show GetAccountSummaryResponse where
  show = genericShow
instance decodeGetAccountSummaryResponse :: Decode GetAccountSummaryResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetAccountSummaryResponse :: Encode GetAccountSummaryResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetAccountSummaryResponse from required parameters
newGetAccountSummaryResponse :: GetAccountSummaryResponse
newGetAccountSummaryResponse  = GetAccountSummaryResponse { "SummaryMap": (NullOrUndefined Nothing) }

-- | Constructs GetAccountSummaryResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAccountSummaryResponse' :: ( { "SummaryMap" :: NullOrUndefined.NullOrUndefined (SummaryMapType') } -> {"SummaryMap" :: NullOrUndefined.NullOrUndefined (SummaryMapType') } ) -> GetAccountSummaryResponse
newGetAccountSummaryResponse'  customize = (GetAccountSummaryResponse <<< customize) { "SummaryMap": (NullOrUndefined Nothing) }



newtype GetContextKeysForCustomPolicyRequest = GetContextKeysForCustomPolicyRequest 
  { "PolicyInputList" :: (SimulationPolicyListType)
  }
derive instance newtypeGetContextKeysForCustomPolicyRequest :: Newtype GetContextKeysForCustomPolicyRequest _
derive instance repGenericGetContextKeysForCustomPolicyRequest :: Generic GetContextKeysForCustomPolicyRequest _
instance showGetContextKeysForCustomPolicyRequest :: Show GetContextKeysForCustomPolicyRequest where
  show = genericShow
instance decodeGetContextKeysForCustomPolicyRequest :: Decode GetContextKeysForCustomPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetContextKeysForCustomPolicyRequest :: Encode GetContextKeysForCustomPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetContextKeysForCustomPolicyRequest from required parameters
newGetContextKeysForCustomPolicyRequest :: SimulationPolicyListType -> GetContextKeysForCustomPolicyRequest
newGetContextKeysForCustomPolicyRequest _PolicyInputList = GetContextKeysForCustomPolicyRequest { "PolicyInputList": _PolicyInputList }

-- | Constructs GetContextKeysForCustomPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetContextKeysForCustomPolicyRequest' :: SimulationPolicyListType -> ( { "PolicyInputList" :: (SimulationPolicyListType) } -> {"PolicyInputList" :: (SimulationPolicyListType) } ) -> GetContextKeysForCustomPolicyRequest
newGetContextKeysForCustomPolicyRequest' _PolicyInputList customize = (GetContextKeysForCustomPolicyRequest <<< customize) { "PolicyInputList": _PolicyInputList }



-- | <p>Contains the response to a successful <a>GetContextKeysForPrincipalPolicy</a> or <a>GetContextKeysForCustomPolicy</a> request. </p>
newtype GetContextKeysForPolicyResponse = GetContextKeysForPolicyResponse 
  { "ContextKeyNames" :: NullOrUndefined.NullOrUndefined (ContextKeyNamesResultListType)
  }
derive instance newtypeGetContextKeysForPolicyResponse :: Newtype GetContextKeysForPolicyResponse _
derive instance repGenericGetContextKeysForPolicyResponse :: Generic GetContextKeysForPolicyResponse _
instance showGetContextKeysForPolicyResponse :: Show GetContextKeysForPolicyResponse where
  show = genericShow
instance decodeGetContextKeysForPolicyResponse :: Decode GetContextKeysForPolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetContextKeysForPolicyResponse :: Encode GetContextKeysForPolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetContextKeysForPolicyResponse from required parameters
newGetContextKeysForPolicyResponse :: GetContextKeysForPolicyResponse
newGetContextKeysForPolicyResponse  = GetContextKeysForPolicyResponse { "ContextKeyNames": (NullOrUndefined Nothing) }

-- | Constructs GetContextKeysForPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetContextKeysForPolicyResponse' :: ( { "ContextKeyNames" :: NullOrUndefined.NullOrUndefined (ContextKeyNamesResultListType) } -> {"ContextKeyNames" :: NullOrUndefined.NullOrUndefined (ContextKeyNamesResultListType) } ) -> GetContextKeysForPolicyResponse
newGetContextKeysForPolicyResponse'  customize = (GetContextKeysForPolicyResponse <<< customize) { "ContextKeyNames": (NullOrUndefined Nothing) }



newtype GetContextKeysForPrincipalPolicyRequest = GetContextKeysForPrincipalPolicyRequest 
  { "PolicySourceArn" :: (ArnType')
  , "PolicyInputList" :: NullOrUndefined.NullOrUndefined (SimulationPolicyListType)
  }
derive instance newtypeGetContextKeysForPrincipalPolicyRequest :: Newtype GetContextKeysForPrincipalPolicyRequest _
derive instance repGenericGetContextKeysForPrincipalPolicyRequest :: Generic GetContextKeysForPrincipalPolicyRequest _
instance showGetContextKeysForPrincipalPolicyRequest :: Show GetContextKeysForPrincipalPolicyRequest where
  show = genericShow
instance decodeGetContextKeysForPrincipalPolicyRequest :: Decode GetContextKeysForPrincipalPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetContextKeysForPrincipalPolicyRequest :: Encode GetContextKeysForPrincipalPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetContextKeysForPrincipalPolicyRequest from required parameters
newGetContextKeysForPrincipalPolicyRequest :: ArnType' -> GetContextKeysForPrincipalPolicyRequest
newGetContextKeysForPrincipalPolicyRequest _PolicySourceArn = GetContextKeysForPrincipalPolicyRequest { "PolicySourceArn": _PolicySourceArn, "PolicyInputList": (NullOrUndefined Nothing) }

-- | Constructs GetContextKeysForPrincipalPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetContextKeysForPrincipalPolicyRequest' :: ArnType' -> ( { "PolicySourceArn" :: (ArnType') , "PolicyInputList" :: NullOrUndefined.NullOrUndefined (SimulationPolicyListType) } -> {"PolicySourceArn" :: (ArnType') , "PolicyInputList" :: NullOrUndefined.NullOrUndefined (SimulationPolicyListType) } ) -> GetContextKeysForPrincipalPolicyRequest
newGetContextKeysForPrincipalPolicyRequest' _PolicySourceArn customize = (GetContextKeysForPrincipalPolicyRequest <<< customize) { "PolicySourceArn": _PolicySourceArn, "PolicyInputList": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>GetCredentialReport</a> request. </p>
newtype GetCredentialReportResponse = GetCredentialReportResponse 
  { "Content" :: NullOrUndefined.NullOrUndefined (ReportContentType)
  , "ReportFormat" :: NullOrUndefined.NullOrUndefined (ReportFormatType)
  , "GeneratedTime" :: NullOrUndefined.NullOrUndefined (DateType')
  }
derive instance newtypeGetCredentialReportResponse :: Newtype GetCredentialReportResponse _
derive instance repGenericGetCredentialReportResponse :: Generic GetCredentialReportResponse _
instance showGetCredentialReportResponse :: Show GetCredentialReportResponse where
  show = genericShow
instance decodeGetCredentialReportResponse :: Decode GetCredentialReportResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetCredentialReportResponse :: Encode GetCredentialReportResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetCredentialReportResponse from required parameters
newGetCredentialReportResponse :: GetCredentialReportResponse
newGetCredentialReportResponse  = GetCredentialReportResponse { "Content": (NullOrUndefined Nothing), "GeneratedTime": (NullOrUndefined Nothing), "ReportFormat": (NullOrUndefined Nothing) }

-- | Constructs GetCredentialReportResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCredentialReportResponse' :: ( { "Content" :: NullOrUndefined.NullOrUndefined (ReportContentType) , "ReportFormat" :: NullOrUndefined.NullOrUndefined (ReportFormatType) , "GeneratedTime" :: NullOrUndefined.NullOrUndefined (DateType') } -> {"Content" :: NullOrUndefined.NullOrUndefined (ReportContentType) , "ReportFormat" :: NullOrUndefined.NullOrUndefined (ReportFormatType) , "GeneratedTime" :: NullOrUndefined.NullOrUndefined (DateType') } ) -> GetCredentialReportResponse
newGetCredentialReportResponse'  customize = (GetCredentialReportResponse <<< customize) { "Content": (NullOrUndefined Nothing), "GeneratedTime": (NullOrUndefined Nothing), "ReportFormat": (NullOrUndefined Nothing) }



newtype GetGroupPolicyRequest = GetGroupPolicyRequest 
  { "GroupName" :: (GroupNameType')
  , "PolicyName" :: (PolicyNameType')
  }
derive instance newtypeGetGroupPolicyRequest :: Newtype GetGroupPolicyRequest _
derive instance repGenericGetGroupPolicyRequest :: Generic GetGroupPolicyRequest _
instance showGetGroupPolicyRequest :: Show GetGroupPolicyRequest where
  show = genericShow
instance decodeGetGroupPolicyRequest :: Decode GetGroupPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetGroupPolicyRequest :: Encode GetGroupPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetGroupPolicyRequest from required parameters
newGetGroupPolicyRequest :: GroupNameType' -> PolicyNameType' -> GetGroupPolicyRequest
newGetGroupPolicyRequest _GroupName _PolicyName = GetGroupPolicyRequest { "GroupName": _GroupName, "PolicyName": _PolicyName }

-- | Constructs GetGroupPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGroupPolicyRequest' :: GroupNameType' -> PolicyNameType' -> ( { "GroupName" :: (GroupNameType') , "PolicyName" :: (PolicyNameType') } -> {"GroupName" :: (GroupNameType') , "PolicyName" :: (PolicyNameType') } ) -> GetGroupPolicyRequest
newGetGroupPolicyRequest' _GroupName _PolicyName customize = (GetGroupPolicyRequest <<< customize) { "GroupName": _GroupName, "PolicyName": _PolicyName }



-- | <p>Contains the response to a successful <a>GetGroupPolicy</a> request. </p>
newtype GetGroupPolicyResponse = GetGroupPolicyResponse 
  { "GroupName" :: (GroupNameType')
  , "PolicyName" :: (PolicyNameType')
  , "PolicyDocument" :: (PolicyDocumentType')
  }
derive instance newtypeGetGroupPolicyResponse :: Newtype GetGroupPolicyResponse _
derive instance repGenericGetGroupPolicyResponse :: Generic GetGroupPolicyResponse _
instance showGetGroupPolicyResponse :: Show GetGroupPolicyResponse where
  show = genericShow
instance decodeGetGroupPolicyResponse :: Decode GetGroupPolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetGroupPolicyResponse :: Encode GetGroupPolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetGroupPolicyResponse from required parameters
newGetGroupPolicyResponse :: GroupNameType' -> PolicyDocumentType' -> PolicyNameType' -> GetGroupPolicyResponse
newGetGroupPolicyResponse _GroupName _PolicyDocument _PolicyName = GetGroupPolicyResponse { "GroupName": _GroupName, "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName }

-- | Constructs GetGroupPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGroupPolicyResponse' :: GroupNameType' -> PolicyDocumentType' -> PolicyNameType' -> ( { "GroupName" :: (GroupNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } -> {"GroupName" :: (GroupNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } ) -> GetGroupPolicyResponse
newGetGroupPolicyResponse' _GroupName _PolicyDocument _PolicyName customize = (GetGroupPolicyResponse <<< customize) { "GroupName": _GroupName, "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName }



newtype GetGroupRequest = GetGroupRequest 
  { "GroupName" :: (GroupNameType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeGetGroupRequest :: Newtype GetGroupRequest _
derive instance repGenericGetGroupRequest :: Generic GetGroupRequest _
instance showGetGroupRequest :: Show GetGroupRequest where
  show = genericShow
instance decodeGetGroupRequest :: Decode GetGroupRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetGroupRequest :: Encode GetGroupRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetGroupRequest from required parameters
newGetGroupRequest :: GroupNameType' -> GetGroupRequest
newGetGroupRequest _GroupName = GetGroupRequest { "GroupName": _GroupName, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }

-- | Constructs GetGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGroupRequest' :: GroupNameType' -> ( { "GroupName" :: (GroupNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"GroupName" :: (GroupNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> GetGroupRequest
newGetGroupRequest' _GroupName customize = (GetGroupRequest <<< customize) { "GroupName": _GroupName, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>GetGroup</a> request. </p>
newtype GetGroupResponse = GetGroupResponse 
  { "Group" :: (Group)
  , "Users" :: (UserListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeGetGroupResponse :: Newtype GetGroupResponse _
derive instance repGenericGetGroupResponse :: Generic GetGroupResponse _
instance showGetGroupResponse :: Show GetGroupResponse where
  show = genericShow
instance decodeGetGroupResponse :: Decode GetGroupResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetGroupResponse :: Encode GetGroupResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetGroupResponse from required parameters
newGetGroupResponse :: Group -> UserListType' -> GetGroupResponse
newGetGroupResponse _Group _Users = GetGroupResponse { "Group": _Group, "Users": _Users, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs GetGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGroupResponse' :: Group -> UserListType' -> ( { "Group" :: (Group) , "Users" :: (UserListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"Group" :: (Group) , "Users" :: (UserListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> GetGroupResponse
newGetGroupResponse' _Group _Users customize = (GetGroupResponse <<< customize) { "Group": _Group, "Users": _Users, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype GetInstanceProfileRequest = GetInstanceProfileRequest 
  { "InstanceProfileName" :: (InstanceProfileNameType')
  }
derive instance newtypeGetInstanceProfileRequest :: Newtype GetInstanceProfileRequest _
derive instance repGenericGetInstanceProfileRequest :: Generic GetInstanceProfileRequest _
instance showGetInstanceProfileRequest :: Show GetInstanceProfileRequest where
  show = genericShow
instance decodeGetInstanceProfileRequest :: Decode GetInstanceProfileRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetInstanceProfileRequest :: Encode GetInstanceProfileRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetInstanceProfileRequest from required parameters
newGetInstanceProfileRequest :: InstanceProfileNameType' -> GetInstanceProfileRequest
newGetInstanceProfileRequest _InstanceProfileName = GetInstanceProfileRequest { "InstanceProfileName": _InstanceProfileName }

-- | Constructs GetInstanceProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetInstanceProfileRequest' :: InstanceProfileNameType' -> ( { "InstanceProfileName" :: (InstanceProfileNameType') } -> {"InstanceProfileName" :: (InstanceProfileNameType') } ) -> GetInstanceProfileRequest
newGetInstanceProfileRequest' _InstanceProfileName customize = (GetInstanceProfileRequest <<< customize) { "InstanceProfileName": _InstanceProfileName }



-- | <p>Contains the response to a successful <a>GetInstanceProfile</a> request. </p>
newtype GetInstanceProfileResponse = GetInstanceProfileResponse 
  { "InstanceProfile" :: (InstanceProfile)
  }
derive instance newtypeGetInstanceProfileResponse :: Newtype GetInstanceProfileResponse _
derive instance repGenericGetInstanceProfileResponse :: Generic GetInstanceProfileResponse _
instance showGetInstanceProfileResponse :: Show GetInstanceProfileResponse where
  show = genericShow
instance decodeGetInstanceProfileResponse :: Decode GetInstanceProfileResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetInstanceProfileResponse :: Encode GetInstanceProfileResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetInstanceProfileResponse from required parameters
newGetInstanceProfileResponse :: InstanceProfile -> GetInstanceProfileResponse
newGetInstanceProfileResponse _InstanceProfile = GetInstanceProfileResponse { "InstanceProfile": _InstanceProfile }

-- | Constructs GetInstanceProfileResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetInstanceProfileResponse' :: InstanceProfile -> ( { "InstanceProfile" :: (InstanceProfile) } -> {"InstanceProfile" :: (InstanceProfile) } ) -> GetInstanceProfileResponse
newGetInstanceProfileResponse' _InstanceProfile customize = (GetInstanceProfileResponse <<< customize) { "InstanceProfile": _InstanceProfile }



newtype GetLoginProfileRequest = GetLoginProfileRequest 
  { "UserName" :: (UserNameType')
  }
derive instance newtypeGetLoginProfileRequest :: Newtype GetLoginProfileRequest _
derive instance repGenericGetLoginProfileRequest :: Generic GetLoginProfileRequest _
instance showGetLoginProfileRequest :: Show GetLoginProfileRequest where
  show = genericShow
instance decodeGetLoginProfileRequest :: Decode GetLoginProfileRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetLoginProfileRequest :: Encode GetLoginProfileRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetLoginProfileRequest from required parameters
newGetLoginProfileRequest :: UserNameType' -> GetLoginProfileRequest
newGetLoginProfileRequest _UserName = GetLoginProfileRequest { "UserName": _UserName }

-- | Constructs GetLoginProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetLoginProfileRequest' :: UserNameType' -> ( { "UserName" :: (UserNameType') } -> {"UserName" :: (UserNameType') } ) -> GetLoginProfileRequest
newGetLoginProfileRequest' _UserName customize = (GetLoginProfileRequest <<< customize) { "UserName": _UserName }



-- | <p>Contains the response to a successful <a>GetLoginProfile</a> request. </p>
newtype GetLoginProfileResponse = GetLoginProfileResponse 
  { "LoginProfile" :: (LoginProfile)
  }
derive instance newtypeGetLoginProfileResponse :: Newtype GetLoginProfileResponse _
derive instance repGenericGetLoginProfileResponse :: Generic GetLoginProfileResponse _
instance showGetLoginProfileResponse :: Show GetLoginProfileResponse where
  show = genericShow
instance decodeGetLoginProfileResponse :: Decode GetLoginProfileResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetLoginProfileResponse :: Encode GetLoginProfileResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetLoginProfileResponse from required parameters
newGetLoginProfileResponse :: LoginProfile -> GetLoginProfileResponse
newGetLoginProfileResponse _LoginProfile = GetLoginProfileResponse { "LoginProfile": _LoginProfile }

-- | Constructs GetLoginProfileResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetLoginProfileResponse' :: LoginProfile -> ( { "LoginProfile" :: (LoginProfile) } -> {"LoginProfile" :: (LoginProfile) } ) -> GetLoginProfileResponse
newGetLoginProfileResponse' _LoginProfile customize = (GetLoginProfileResponse <<< customize) { "LoginProfile": _LoginProfile }



newtype GetOpenIDConnectProviderRequest = GetOpenIDConnectProviderRequest 
  { "OpenIDConnectProviderArn" :: (ArnType')
  }
derive instance newtypeGetOpenIDConnectProviderRequest :: Newtype GetOpenIDConnectProviderRequest _
derive instance repGenericGetOpenIDConnectProviderRequest :: Generic GetOpenIDConnectProviderRequest _
instance showGetOpenIDConnectProviderRequest :: Show GetOpenIDConnectProviderRequest where
  show = genericShow
instance decodeGetOpenIDConnectProviderRequest :: Decode GetOpenIDConnectProviderRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetOpenIDConnectProviderRequest :: Encode GetOpenIDConnectProviderRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetOpenIDConnectProviderRequest from required parameters
newGetOpenIDConnectProviderRequest :: ArnType' -> GetOpenIDConnectProviderRequest
newGetOpenIDConnectProviderRequest _OpenIDConnectProviderArn = GetOpenIDConnectProviderRequest { "OpenIDConnectProviderArn": _OpenIDConnectProviderArn }

-- | Constructs GetOpenIDConnectProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetOpenIDConnectProviderRequest' :: ArnType' -> ( { "OpenIDConnectProviderArn" :: (ArnType') } -> {"OpenIDConnectProviderArn" :: (ArnType') } ) -> GetOpenIDConnectProviderRequest
newGetOpenIDConnectProviderRequest' _OpenIDConnectProviderArn customize = (GetOpenIDConnectProviderRequest <<< customize) { "OpenIDConnectProviderArn": _OpenIDConnectProviderArn }



-- | <p>Contains the response to a successful <a>GetOpenIDConnectProvider</a> request. </p>
newtype GetOpenIDConnectProviderResponse = GetOpenIDConnectProviderResponse 
  { "Url" :: NullOrUndefined.NullOrUndefined (OpenIDConnectProviderUrlType)
  , "ClientIDList" :: NullOrUndefined.NullOrUndefined (ClientIDListType')
  , "ThumbprintList" :: NullOrUndefined.NullOrUndefined (ThumbprintListType')
  , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType')
  }
derive instance newtypeGetOpenIDConnectProviderResponse :: Newtype GetOpenIDConnectProviderResponse _
derive instance repGenericGetOpenIDConnectProviderResponse :: Generic GetOpenIDConnectProviderResponse _
instance showGetOpenIDConnectProviderResponse :: Show GetOpenIDConnectProviderResponse where
  show = genericShow
instance decodeGetOpenIDConnectProviderResponse :: Decode GetOpenIDConnectProviderResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetOpenIDConnectProviderResponse :: Encode GetOpenIDConnectProviderResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetOpenIDConnectProviderResponse from required parameters
newGetOpenIDConnectProviderResponse :: GetOpenIDConnectProviderResponse
newGetOpenIDConnectProviderResponse  = GetOpenIDConnectProviderResponse { "ClientIDList": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "ThumbprintList": (NullOrUndefined Nothing), "Url": (NullOrUndefined Nothing) }

-- | Constructs GetOpenIDConnectProviderResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetOpenIDConnectProviderResponse' :: ( { "Url" :: NullOrUndefined.NullOrUndefined (OpenIDConnectProviderUrlType) , "ClientIDList" :: NullOrUndefined.NullOrUndefined (ClientIDListType') , "ThumbprintList" :: NullOrUndefined.NullOrUndefined (ThumbprintListType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') } -> {"Url" :: NullOrUndefined.NullOrUndefined (OpenIDConnectProviderUrlType) , "ClientIDList" :: NullOrUndefined.NullOrUndefined (ClientIDListType') , "ThumbprintList" :: NullOrUndefined.NullOrUndefined (ThumbprintListType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') } ) -> GetOpenIDConnectProviderResponse
newGetOpenIDConnectProviderResponse'  customize = (GetOpenIDConnectProviderResponse <<< customize) { "ClientIDList": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "ThumbprintList": (NullOrUndefined Nothing), "Url": (NullOrUndefined Nothing) }



newtype GetPolicyRequest = GetPolicyRequest 
  { "PolicyArn" :: (ArnType')
  }
derive instance newtypeGetPolicyRequest :: Newtype GetPolicyRequest _
derive instance repGenericGetPolicyRequest :: Generic GetPolicyRequest _
instance showGetPolicyRequest :: Show GetPolicyRequest where
  show = genericShow
instance decodeGetPolicyRequest :: Decode GetPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetPolicyRequest :: Encode GetPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetPolicyRequest from required parameters
newGetPolicyRequest :: ArnType' -> GetPolicyRequest
newGetPolicyRequest _PolicyArn = GetPolicyRequest { "PolicyArn": _PolicyArn }

-- | Constructs GetPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPolicyRequest' :: ArnType' -> ( { "PolicyArn" :: (ArnType') } -> {"PolicyArn" :: (ArnType') } ) -> GetPolicyRequest
newGetPolicyRequest' _PolicyArn customize = (GetPolicyRequest <<< customize) { "PolicyArn": _PolicyArn }



-- | <p>Contains the response to a successful <a>GetPolicy</a> request. </p>
newtype GetPolicyResponse = GetPolicyResponse 
  { "Policy" :: NullOrUndefined.NullOrUndefined (Policy)
  }
derive instance newtypeGetPolicyResponse :: Newtype GetPolicyResponse _
derive instance repGenericGetPolicyResponse :: Generic GetPolicyResponse _
instance showGetPolicyResponse :: Show GetPolicyResponse where
  show = genericShow
instance decodeGetPolicyResponse :: Decode GetPolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetPolicyResponse :: Encode GetPolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetPolicyResponse from required parameters
newGetPolicyResponse :: GetPolicyResponse
newGetPolicyResponse  = GetPolicyResponse { "Policy": (NullOrUndefined Nothing) }

-- | Constructs GetPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPolicyResponse' :: ( { "Policy" :: NullOrUndefined.NullOrUndefined (Policy) } -> {"Policy" :: NullOrUndefined.NullOrUndefined (Policy) } ) -> GetPolicyResponse
newGetPolicyResponse'  customize = (GetPolicyResponse <<< customize) { "Policy": (NullOrUndefined Nothing) }



newtype GetPolicyVersionRequest = GetPolicyVersionRequest 
  { "PolicyArn" :: (ArnType')
  , "VersionId" :: (PolicyVersionIdType')
  }
derive instance newtypeGetPolicyVersionRequest :: Newtype GetPolicyVersionRequest _
derive instance repGenericGetPolicyVersionRequest :: Generic GetPolicyVersionRequest _
instance showGetPolicyVersionRequest :: Show GetPolicyVersionRequest where
  show = genericShow
instance decodeGetPolicyVersionRequest :: Decode GetPolicyVersionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetPolicyVersionRequest :: Encode GetPolicyVersionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetPolicyVersionRequest from required parameters
newGetPolicyVersionRequest :: ArnType' -> PolicyVersionIdType' -> GetPolicyVersionRequest
newGetPolicyVersionRequest _PolicyArn _VersionId = GetPolicyVersionRequest { "PolicyArn": _PolicyArn, "VersionId": _VersionId }

-- | Constructs GetPolicyVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPolicyVersionRequest' :: ArnType' -> PolicyVersionIdType' -> ( { "PolicyArn" :: (ArnType') , "VersionId" :: (PolicyVersionIdType') } -> {"PolicyArn" :: (ArnType') , "VersionId" :: (PolicyVersionIdType') } ) -> GetPolicyVersionRequest
newGetPolicyVersionRequest' _PolicyArn _VersionId customize = (GetPolicyVersionRequest <<< customize) { "PolicyArn": _PolicyArn, "VersionId": _VersionId }



-- | <p>Contains the response to a successful <a>GetPolicyVersion</a> request. </p>
newtype GetPolicyVersionResponse = GetPolicyVersionResponse 
  { "PolicyVersion" :: NullOrUndefined.NullOrUndefined (PolicyVersion)
  }
derive instance newtypeGetPolicyVersionResponse :: Newtype GetPolicyVersionResponse _
derive instance repGenericGetPolicyVersionResponse :: Generic GetPolicyVersionResponse _
instance showGetPolicyVersionResponse :: Show GetPolicyVersionResponse where
  show = genericShow
instance decodeGetPolicyVersionResponse :: Decode GetPolicyVersionResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetPolicyVersionResponse :: Encode GetPolicyVersionResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetPolicyVersionResponse from required parameters
newGetPolicyVersionResponse :: GetPolicyVersionResponse
newGetPolicyVersionResponse  = GetPolicyVersionResponse { "PolicyVersion": (NullOrUndefined Nothing) }

-- | Constructs GetPolicyVersionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPolicyVersionResponse' :: ( { "PolicyVersion" :: NullOrUndefined.NullOrUndefined (PolicyVersion) } -> {"PolicyVersion" :: NullOrUndefined.NullOrUndefined (PolicyVersion) } ) -> GetPolicyVersionResponse
newGetPolicyVersionResponse'  customize = (GetPolicyVersionResponse <<< customize) { "PolicyVersion": (NullOrUndefined Nothing) }



newtype GetRolePolicyRequest = GetRolePolicyRequest 
  { "RoleName" :: (RoleNameType')
  , "PolicyName" :: (PolicyNameType')
  }
derive instance newtypeGetRolePolicyRequest :: Newtype GetRolePolicyRequest _
derive instance repGenericGetRolePolicyRequest :: Generic GetRolePolicyRequest _
instance showGetRolePolicyRequest :: Show GetRolePolicyRequest where
  show = genericShow
instance decodeGetRolePolicyRequest :: Decode GetRolePolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetRolePolicyRequest :: Encode GetRolePolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetRolePolicyRequest from required parameters
newGetRolePolicyRequest :: PolicyNameType' -> RoleNameType' -> GetRolePolicyRequest
newGetRolePolicyRequest _PolicyName _RoleName = GetRolePolicyRequest { "PolicyName": _PolicyName, "RoleName": _RoleName }

-- | Constructs GetRolePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRolePolicyRequest' :: PolicyNameType' -> RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "PolicyName" :: (PolicyNameType') } -> {"RoleName" :: (RoleNameType') , "PolicyName" :: (PolicyNameType') } ) -> GetRolePolicyRequest
newGetRolePolicyRequest' _PolicyName _RoleName customize = (GetRolePolicyRequest <<< customize) { "PolicyName": _PolicyName, "RoleName": _RoleName }



-- | <p>Contains the response to a successful <a>GetRolePolicy</a> request. </p>
newtype GetRolePolicyResponse = GetRolePolicyResponse 
  { "RoleName" :: (RoleNameType')
  , "PolicyName" :: (PolicyNameType')
  , "PolicyDocument" :: (PolicyDocumentType')
  }
derive instance newtypeGetRolePolicyResponse :: Newtype GetRolePolicyResponse _
derive instance repGenericGetRolePolicyResponse :: Generic GetRolePolicyResponse _
instance showGetRolePolicyResponse :: Show GetRolePolicyResponse where
  show = genericShow
instance decodeGetRolePolicyResponse :: Decode GetRolePolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetRolePolicyResponse :: Encode GetRolePolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetRolePolicyResponse from required parameters
newGetRolePolicyResponse :: PolicyDocumentType' -> PolicyNameType' -> RoleNameType' -> GetRolePolicyResponse
newGetRolePolicyResponse _PolicyDocument _PolicyName _RoleName = GetRolePolicyResponse { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "RoleName": _RoleName }

-- | Constructs GetRolePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRolePolicyResponse' :: PolicyDocumentType' -> PolicyNameType' -> RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } -> {"RoleName" :: (RoleNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } ) -> GetRolePolicyResponse
newGetRolePolicyResponse' _PolicyDocument _PolicyName _RoleName customize = (GetRolePolicyResponse <<< customize) { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "RoleName": _RoleName }



newtype GetRoleRequest = GetRoleRequest 
  { "RoleName" :: (RoleNameType')
  }
derive instance newtypeGetRoleRequest :: Newtype GetRoleRequest _
derive instance repGenericGetRoleRequest :: Generic GetRoleRequest _
instance showGetRoleRequest :: Show GetRoleRequest where
  show = genericShow
instance decodeGetRoleRequest :: Decode GetRoleRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetRoleRequest :: Encode GetRoleRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetRoleRequest from required parameters
newGetRoleRequest :: RoleNameType' -> GetRoleRequest
newGetRoleRequest _RoleName = GetRoleRequest { "RoleName": _RoleName }

-- | Constructs GetRoleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRoleRequest' :: RoleNameType' -> ( { "RoleName" :: (RoleNameType') } -> {"RoleName" :: (RoleNameType') } ) -> GetRoleRequest
newGetRoleRequest' _RoleName customize = (GetRoleRequest <<< customize) { "RoleName": _RoleName }



-- | <p>Contains the response to a successful <a>GetRole</a> request. </p>
newtype GetRoleResponse = GetRoleResponse 
  { "Role" :: (Role)
  }
derive instance newtypeGetRoleResponse :: Newtype GetRoleResponse _
derive instance repGenericGetRoleResponse :: Generic GetRoleResponse _
instance showGetRoleResponse :: Show GetRoleResponse where
  show = genericShow
instance decodeGetRoleResponse :: Decode GetRoleResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetRoleResponse :: Encode GetRoleResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetRoleResponse from required parameters
newGetRoleResponse :: Role -> GetRoleResponse
newGetRoleResponse _Role = GetRoleResponse { "Role": _Role }

-- | Constructs GetRoleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRoleResponse' :: Role -> ( { "Role" :: (Role) } -> {"Role" :: (Role) } ) -> GetRoleResponse
newGetRoleResponse' _Role customize = (GetRoleResponse <<< customize) { "Role": _Role }



newtype GetSAMLProviderRequest = GetSAMLProviderRequest 
  { "SAMLProviderArn" :: (ArnType')
  }
derive instance newtypeGetSAMLProviderRequest :: Newtype GetSAMLProviderRequest _
derive instance repGenericGetSAMLProviderRequest :: Generic GetSAMLProviderRequest _
instance showGetSAMLProviderRequest :: Show GetSAMLProviderRequest where
  show = genericShow
instance decodeGetSAMLProviderRequest :: Decode GetSAMLProviderRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetSAMLProviderRequest :: Encode GetSAMLProviderRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetSAMLProviderRequest from required parameters
newGetSAMLProviderRequest :: ArnType' -> GetSAMLProviderRequest
newGetSAMLProviderRequest _SAMLProviderArn = GetSAMLProviderRequest { "SAMLProviderArn": _SAMLProviderArn }

-- | Constructs GetSAMLProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSAMLProviderRequest' :: ArnType' -> ( { "SAMLProviderArn" :: (ArnType') } -> {"SAMLProviderArn" :: (ArnType') } ) -> GetSAMLProviderRequest
newGetSAMLProviderRequest' _SAMLProviderArn customize = (GetSAMLProviderRequest <<< customize) { "SAMLProviderArn": _SAMLProviderArn }



-- | <p>Contains the response to a successful <a>GetSAMLProvider</a> request. </p>
newtype GetSAMLProviderResponse = GetSAMLProviderResponse 
  { "SAMLMetadataDocument" :: NullOrUndefined.NullOrUndefined (SAMLMetadataDocumentType)
  , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType')
  , "ValidUntil" :: NullOrUndefined.NullOrUndefined (DateType')
  }
derive instance newtypeGetSAMLProviderResponse :: Newtype GetSAMLProviderResponse _
derive instance repGenericGetSAMLProviderResponse :: Generic GetSAMLProviderResponse _
instance showGetSAMLProviderResponse :: Show GetSAMLProviderResponse where
  show = genericShow
instance decodeGetSAMLProviderResponse :: Decode GetSAMLProviderResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetSAMLProviderResponse :: Encode GetSAMLProviderResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetSAMLProviderResponse from required parameters
newGetSAMLProviderResponse :: GetSAMLProviderResponse
newGetSAMLProviderResponse  = GetSAMLProviderResponse { "CreateDate": (NullOrUndefined Nothing), "SAMLMetadataDocument": (NullOrUndefined Nothing), "ValidUntil": (NullOrUndefined Nothing) }

-- | Constructs GetSAMLProviderResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSAMLProviderResponse' :: ( { "SAMLMetadataDocument" :: NullOrUndefined.NullOrUndefined (SAMLMetadataDocumentType) , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') , "ValidUntil" :: NullOrUndefined.NullOrUndefined (DateType') } -> {"SAMLMetadataDocument" :: NullOrUndefined.NullOrUndefined (SAMLMetadataDocumentType) , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') , "ValidUntil" :: NullOrUndefined.NullOrUndefined (DateType') } ) -> GetSAMLProviderResponse
newGetSAMLProviderResponse'  customize = (GetSAMLProviderResponse <<< customize) { "CreateDate": (NullOrUndefined Nothing), "SAMLMetadataDocument": (NullOrUndefined Nothing), "ValidUntil": (NullOrUndefined Nothing) }



newtype GetSSHPublicKeyRequest = GetSSHPublicKeyRequest 
  { "UserName" :: (UserNameType')
  , "SSHPublicKeyId" :: (PublicKeyIdType')
  , "Encoding" :: (EncodingType')
  }
derive instance newtypeGetSSHPublicKeyRequest :: Newtype GetSSHPublicKeyRequest _
derive instance repGenericGetSSHPublicKeyRequest :: Generic GetSSHPublicKeyRequest _
instance showGetSSHPublicKeyRequest :: Show GetSSHPublicKeyRequest where
  show = genericShow
instance decodeGetSSHPublicKeyRequest :: Decode GetSSHPublicKeyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetSSHPublicKeyRequest :: Encode GetSSHPublicKeyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetSSHPublicKeyRequest from required parameters
newGetSSHPublicKeyRequest :: EncodingType' -> PublicKeyIdType' -> UserNameType' -> GetSSHPublicKeyRequest
newGetSSHPublicKeyRequest _Encoding _SSHPublicKeyId _UserName = GetSSHPublicKeyRequest { "Encoding": _Encoding, "SSHPublicKeyId": _SSHPublicKeyId, "UserName": _UserName }

-- | Constructs GetSSHPublicKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSSHPublicKeyRequest' :: EncodingType' -> PublicKeyIdType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') , "Encoding" :: (EncodingType') } -> {"UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') , "Encoding" :: (EncodingType') } ) -> GetSSHPublicKeyRequest
newGetSSHPublicKeyRequest' _Encoding _SSHPublicKeyId _UserName customize = (GetSSHPublicKeyRequest <<< customize) { "Encoding": _Encoding, "SSHPublicKeyId": _SSHPublicKeyId, "UserName": _UserName }



-- | <p>Contains the response to a successful <a>GetSSHPublicKey</a> request.</p>
newtype GetSSHPublicKeyResponse = GetSSHPublicKeyResponse 
  { "SSHPublicKey" :: NullOrUndefined.NullOrUndefined (SSHPublicKey)
  }
derive instance newtypeGetSSHPublicKeyResponse :: Newtype GetSSHPublicKeyResponse _
derive instance repGenericGetSSHPublicKeyResponse :: Generic GetSSHPublicKeyResponse _
instance showGetSSHPublicKeyResponse :: Show GetSSHPublicKeyResponse where
  show = genericShow
instance decodeGetSSHPublicKeyResponse :: Decode GetSSHPublicKeyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetSSHPublicKeyResponse :: Encode GetSSHPublicKeyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetSSHPublicKeyResponse from required parameters
newGetSSHPublicKeyResponse :: GetSSHPublicKeyResponse
newGetSSHPublicKeyResponse  = GetSSHPublicKeyResponse { "SSHPublicKey": (NullOrUndefined Nothing) }

-- | Constructs GetSSHPublicKeyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSSHPublicKeyResponse' :: ( { "SSHPublicKey" :: NullOrUndefined.NullOrUndefined (SSHPublicKey) } -> {"SSHPublicKey" :: NullOrUndefined.NullOrUndefined (SSHPublicKey) } ) -> GetSSHPublicKeyResponse
newGetSSHPublicKeyResponse'  customize = (GetSSHPublicKeyResponse <<< customize) { "SSHPublicKey": (NullOrUndefined Nothing) }



newtype GetServerCertificateRequest = GetServerCertificateRequest 
  { "ServerCertificateName" :: (ServerCertificateNameType')
  }
derive instance newtypeGetServerCertificateRequest :: Newtype GetServerCertificateRequest _
derive instance repGenericGetServerCertificateRequest :: Generic GetServerCertificateRequest _
instance showGetServerCertificateRequest :: Show GetServerCertificateRequest where
  show = genericShow
instance decodeGetServerCertificateRequest :: Decode GetServerCertificateRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetServerCertificateRequest :: Encode GetServerCertificateRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetServerCertificateRequest from required parameters
newGetServerCertificateRequest :: ServerCertificateNameType' -> GetServerCertificateRequest
newGetServerCertificateRequest _ServerCertificateName = GetServerCertificateRequest { "ServerCertificateName": _ServerCertificateName }

-- | Constructs GetServerCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetServerCertificateRequest' :: ServerCertificateNameType' -> ( { "ServerCertificateName" :: (ServerCertificateNameType') } -> {"ServerCertificateName" :: (ServerCertificateNameType') } ) -> GetServerCertificateRequest
newGetServerCertificateRequest' _ServerCertificateName customize = (GetServerCertificateRequest <<< customize) { "ServerCertificateName": _ServerCertificateName }



-- | <p>Contains the response to a successful <a>GetServerCertificate</a> request. </p>
newtype GetServerCertificateResponse = GetServerCertificateResponse 
  { "ServerCertificate" :: (ServerCertificate)
  }
derive instance newtypeGetServerCertificateResponse :: Newtype GetServerCertificateResponse _
derive instance repGenericGetServerCertificateResponse :: Generic GetServerCertificateResponse _
instance showGetServerCertificateResponse :: Show GetServerCertificateResponse where
  show = genericShow
instance decodeGetServerCertificateResponse :: Decode GetServerCertificateResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetServerCertificateResponse :: Encode GetServerCertificateResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetServerCertificateResponse from required parameters
newGetServerCertificateResponse :: ServerCertificate -> GetServerCertificateResponse
newGetServerCertificateResponse _ServerCertificate = GetServerCertificateResponse { "ServerCertificate": _ServerCertificate }

-- | Constructs GetServerCertificateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetServerCertificateResponse' :: ServerCertificate -> ( { "ServerCertificate" :: (ServerCertificate) } -> {"ServerCertificate" :: (ServerCertificate) } ) -> GetServerCertificateResponse
newGetServerCertificateResponse' _ServerCertificate customize = (GetServerCertificateResponse <<< customize) { "ServerCertificate": _ServerCertificate }



newtype GetServiceLinkedRoleDeletionStatusRequest = GetServiceLinkedRoleDeletionStatusRequest 
  { "DeletionTaskId" :: (DeletionTaskIdType)
  }
derive instance newtypeGetServiceLinkedRoleDeletionStatusRequest :: Newtype GetServiceLinkedRoleDeletionStatusRequest _
derive instance repGenericGetServiceLinkedRoleDeletionStatusRequest :: Generic GetServiceLinkedRoleDeletionStatusRequest _
instance showGetServiceLinkedRoleDeletionStatusRequest :: Show GetServiceLinkedRoleDeletionStatusRequest where
  show = genericShow
instance decodeGetServiceLinkedRoleDeletionStatusRequest :: Decode GetServiceLinkedRoleDeletionStatusRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetServiceLinkedRoleDeletionStatusRequest :: Encode GetServiceLinkedRoleDeletionStatusRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetServiceLinkedRoleDeletionStatusRequest from required parameters
newGetServiceLinkedRoleDeletionStatusRequest :: DeletionTaskIdType -> GetServiceLinkedRoleDeletionStatusRequest
newGetServiceLinkedRoleDeletionStatusRequest _DeletionTaskId = GetServiceLinkedRoleDeletionStatusRequest { "DeletionTaskId": _DeletionTaskId }

-- | Constructs GetServiceLinkedRoleDeletionStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetServiceLinkedRoleDeletionStatusRequest' :: DeletionTaskIdType -> ( { "DeletionTaskId" :: (DeletionTaskIdType) } -> {"DeletionTaskId" :: (DeletionTaskIdType) } ) -> GetServiceLinkedRoleDeletionStatusRequest
newGetServiceLinkedRoleDeletionStatusRequest' _DeletionTaskId customize = (GetServiceLinkedRoleDeletionStatusRequest <<< customize) { "DeletionTaskId": _DeletionTaskId }



newtype GetServiceLinkedRoleDeletionStatusResponse = GetServiceLinkedRoleDeletionStatusResponse 
  { "Status" :: (DeletionTaskStatusType)
  , "Reason" :: NullOrUndefined.NullOrUndefined (DeletionTaskFailureReasonType)
  }
derive instance newtypeGetServiceLinkedRoleDeletionStatusResponse :: Newtype GetServiceLinkedRoleDeletionStatusResponse _
derive instance repGenericGetServiceLinkedRoleDeletionStatusResponse :: Generic GetServiceLinkedRoleDeletionStatusResponse _
instance showGetServiceLinkedRoleDeletionStatusResponse :: Show GetServiceLinkedRoleDeletionStatusResponse where
  show = genericShow
instance decodeGetServiceLinkedRoleDeletionStatusResponse :: Decode GetServiceLinkedRoleDeletionStatusResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetServiceLinkedRoleDeletionStatusResponse :: Encode GetServiceLinkedRoleDeletionStatusResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetServiceLinkedRoleDeletionStatusResponse from required parameters
newGetServiceLinkedRoleDeletionStatusResponse :: DeletionTaskStatusType -> GetServiceLinkedRoleDeletionStatusResponse
newGetServiceLinkedRoleDeletionStatusResponse _Status = GetServiceLinkedRoleDeletionStatusResponse { "Status": _Status, "Reason": (NullOrUndefined Nothing) }

-- | Constructs GetServiceLinkedRoleDeletionStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetServiceLinkedRoleDeletionStatusResponse' :: DeletionTaskStatusType -> ( { "Status" :: (DeletionTaskStatusType) , "Reason" :: NullOrUndefined.NullOrUndefined (DeletionTaskFailureReasonType) } -> {"Status" :: (DeletionTaskStatusType) , "Reason" :: NullOrUndefined.NullOrUndefined (DeletionTaskFailureReasonType) } ) -> GetServiceLinkedRoleDeletionStatusResponse
newGetServiceLinkedRoleDeletionStatusResponse' _Status customize = (GetServiceLinkedRoleDeletionStatusResponse <<< customize) { "Status": _Status, "Reason": (NullOrUndefined Nothing) }



newtype GetUserPolicyRequest = GetUserPolicyRequest 
  { "UserName" :: (ExistingUserNameType')
  , "PolicyName" :: (PolicyNameType')
  }
derive instance newtypeGetUserPolicyRequest :: Newtype GetUserPolicyRequest _
derive instance repGenericGetUserPolicyRequest :: Generic GetUserPolicyRequest _
instance showGetUserPolicyRequest :: Show GetUserPolicyRequest where
  show = genericShow
instance decodeGetUserPolicyRequest :: Decode GetUserPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetUserPolicyRequest :: Encode GetUserPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetUserPolicyRequest from required parameters
newGetUserPolicyRequest :: PolicyNameType' -> ExistingUserNameType' -> GetUserPolicyRequest
newGetUserPolicyRequest _PolicyName _UserName = GetUserPolicyRequest { "PolicyName": _PolicyName, "UserName": _UserName }

-- | Constructs GetUserPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetUserPolicyRequest' :: PolicyNameType' -> ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "PolicyName" :: (PolicyNameType') } -> {"UserName" :: (ExistingUserNameType') , "PolicyName" :: (PolicyNameType') } ) -> GetUserPolicyRequest
newGetUserPolicyRequest' _PolicyName _UserName customize = (GetUserPolicyRequest <<< customize) { "PolicyName": _PolicyName, "UserName": _UserName }



-- | <p>Contains the response to a successful <a>GetUserPolicy</a> request. </p>
newtype GetUserPolicyResponse = GetUserPolicyResponse 
  { "UserName" :: (ExistingUserNameType')
  , "PolicyName" :: (PolicyNameType')
  , "PolicyDocument" :: (PolicyDocumentType')
  }
derive instance newtypeGetUserPolicyResponse :: Newtype GetUserPolicyResponse _
derive instance repGenericGetUserPolicyResponse :: Generic GetUserPolicyResponse _
instance showGetUserPolicyResponse :: Show GetUserPolicyResponse where
  show = genericShow
instance decodeGetUserPolicyResponse :: Decode GetUserPolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetUserPolicyResponse :: Encode GetUserPolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetUserPolicyResponse from required parameters
newGetUserPolicyResponse :: PolicyDocumentType' -> PolicyNameType' -> ExistingUserNameType' -> GetUserPolicyResponse
newGetUserPolicyResponse _PolicyDocument _PolicyName _UserName = GetUserPolicyResponse { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "UserName": _UserName }

-- | Constructs GetUserPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetUserPolicyResponse' :: PolicyDocumentType' -> PolicyNameType' -> ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } -> {"UserName" :: (ExistingUserNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } ) -> GetUserPolicyResponse
newGetUserPolicyResponse' _PolicyDocument _PolicyName _UserName customize = (GetUserPolicyResponse <<< customize) { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "UserName": _UserName }



newtype GetUserRequest = GetUserRequest 
  { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType')
  }
derive instance newtypeGetUserRequest :: Newtype GetUserRequest _
derive instance repGenericGetUserRequest :: Generic GetUserRequest _
instance showGetUserRequest :: Show GetUserRequest where
  show = genericShow
instance decodeGetUserRequest :: Decode GetUserRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetUserRequest :: Encode GetUserRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetUserRequest from required parameters
newGetUserRequest :: GetUserRequest
newGetUserRequest  = GetUserRequest { "UserName": (NullOrUndefined Nothing) }

-- | Constructs GetUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetUserRequest' :: ( { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') } -> {"UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') } ) -> GetUserRequest
newGetUserRequest'  customize = (GetUserRequest <<< customize) { "UserName": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>GetUser</a> request. </p>
newtype GetUserResponse = GetUserResponse 
  { "User" :: (User)
  }
derive instance newtypeGetUserResponse :: Newtype GetUserResponse _
derive instance repGenericGetUserResponse :: Generic GetUserResponse _
instance showGetUserResponse :: Show GetUserResponse where
  show = genericShow
instance decodeGetUserResponse :: Decode GetUserResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetUserResponse :: Encode GetUserResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetUserResponse from required parameters
newGetUserResponse :: User -> GetUserResponse
newGetUserResponse _User = GetUserResponse { "User": _User }

-- | Constructs GetUserResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetUserResponse' :: User -> ( { "User" :: (User) } -> {"User" :: (User) } ) -> GetUserResponse
newGetUserResponse' _User customize = (GetUserResponse <<< customize) { "User": _User }



-- | <p>Contains information about an IAM group entity.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateGroup</a> </p> </li> <li> <p> <a>GetGroup</a> </p> </li> <li> <p> <a>ListGroups</a> </p> </li> </ul>
newtype Group = Group 
  { "Path" :: (PathType')
  , "GroupName" :: (GroupNameType')
  , "GroupId" :: (IdType')
  , "Arn" :: (ArnType')
  , "CreateDate" :: (DateType')
  }
derive instance newtypeGroup :: Newtype Group _
derive instance repGenericGroup :: Generic Group _
instance showGroup :: Show Group where
  show = genericShow
instance decodeGroup :: Decode Group where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGroup :: Encode Group where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Group from required parameters
newGroup :: ArnType' -> DateType' -> IdType' -> GroupNameType' -> PathType' -> Group
newGroup _Arn _CreateDate _GroupId _GroupName _Path = Group { "Arn": _Arn, "CreateDate": _CreateDate, "GroupId": _GroupId, "GroupName": _GroupName, "Path": _Path }

-- | Constructs Group's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGroup' :: ArnType' -> DateType' -> IdType' -> GroupNameType' -> PathType' -> ( { "Path" :: (PathType') , "GroupName" :: (GroupNameType') , "GroupId" :: (IdType') , "Arn" :: (ArnType') , "CreateDate" :: (DateType') } -> {"Path" :: (PathType') , "GroupName" :: (GroupNameType') , "GroupId" :: (IdType') , "Arn" :: (ArnType') , "CreateDate" :: (DateType') } ) -> Group
newGroup' _Arn _CreateDate _GroupId _GroupName _Path customize = (Group <<< customize) { "Arn": _Arn, "CreateDate": _CreateDate, "GroupId": _GroupId, "GroupName": _GroupName, "Path": _Path }



-- | <p>Contains information about an IAM group, including all of the group's policies.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>
newtype GroupDetail = GroupDetail 
  { "Path" :: NullOrUndefined.NullOrUndefined (PathType')
  , "GroupName" :: NullOrUndefined.NullOrUndefined (GroupNameType')
  , "GroupId" :: NullOrUndefined.NullOrUndefined (IdType')
  , "Arn" :: NullOrUndefined.NullOrUndefined (ArnType')
  , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType')
  , "GroupPolicyList" :: NullOrUndefined.NullOrUndefined (PolicyDetailListType')
  , "AttachedManagedPolicies" :: NullOrUndefined.NullOrUndefined (AttachedPoliciesListType')
  }
derive instance newtypeGroupDetail :: Newtype GroupDetail _
derive instance repGenericGroupDetail :: Generic GroupDetail _
instance showGroupDetail :: Show GroupDetail where
  show = genericShow
instance decodeGroupDetail :: Decode GroupDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGroupDetail :: Encode GroupDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GroupDetail from required parameters
newGroupDetail :: GroupDetail
newGroupDetail  = GroupDetail { "Arn": (NullOrUndefined Nothing), "AttachedManagedPolicies": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "GroupId": (NullOrUndefined Nothing), "GroupName": (NullOrUndefined Nothing), "GroupPolicyList": (NullOrUndefined Nothing), "Path": (NullOrUndefined Nothing) }

-- | Constructs GroupDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGroupDetail' :: ( { "Path" :: NullOrUndefined.NullOrUndefined (PathType') , "GroupName" :: NullOrUndefined.NullOrUndefined (GroupNameType') , "GroupId" :: NullOrUndefined.NullOrUndefined (IdType') , "Arn" :: NullOrUndefined.NullOrUndefined (ArnType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') , "GroupPolicyList" :: NullOrUndefined.NullOrUndefined (PolicyDetailListType') , "AttachedManagedPolicies" :: NullOrUndefined.NullOrUndefined (AttachedPoliciesListType') } -> {"Path" :: NullOrUndefined.NullOrUndefined (PathType') , "GroupName" :: NullOrUndefined.NullOrUndefined (GroupNameType') , "GroupId" :: NullOrUndefined.NullOrUndefined (IdType') , "Arn" :: NullOrUndefined.NullOrUndefined (ArnType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') , "GroupPolicyList" :: NullOrUndefined.NullOrUndefined (PolicyDetailListType') , "AttachedManagedPolicies" :: NullOrUndefined.NullOrUndefined (AttachedPoliciesListType') } ) -> GroupDetail
newGroupDetail'  customize = (GroupDetail <<< customize) { "Arn": (NullOrUndefined Nothing), "AttachedManagedPolicies": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "GroupId": (NullOrUndefined Nothing), "GroupName": (NullOrUndefined Nothing), "GroupPolicyList": (NullOrUndefined Nothing), "Path": (NullOrUndefined Nothing) }



-- | <p>Contains information about an instance profile.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateInstanceProfile</a> </p> </li> <li> <p> <a>GetInstanceProfile</a> </p> </li> <li> <p> <a>ListInstanceProfiles</a> </p> </li> <li> <p> <a>ListInstanceProfilesForRole</a> </p> </li> </ul>
newtype InstanceProfile = InstanceProfile 
  { "Path" :: (PathType')
  , "InstanceProfileName" :: (InstanceProfileNameType')
  , "InstanceProfileId" :: (IdType')
  , "Arn" :: (ArnType')
  , "CreateDate" :: (DateType')
  , "Roles" :: (RoleListType')
  }
derive instance newtypeInstanceProfile :: Newtype InstanceProfile _
derive instance repGenericInstanceProfile :: Generic InstanceProfile _
instance showInstanceProfile :: Show InstanceProfile where
  show = genericShow
instance decodeInstanceProfile :: Decode InstanceProfile where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceProfile :: Encode InstanceProfile where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceProfile from required parameters
newInstanceProfile :: ArnType' -> DateType' -> IdType' -> InstanceProfileNameType' -> PathType' -> RoleListType' -> InstanceProfile
newInstanceProfile _Arn _CreateDate _InstanceProfileId _InstanceProfileName _Path _Roles = InstanceProfile { "Arn": _Arn, "CreateDate": _CreateDate, "InstanceProfileId": _InstanceProfileId, "InstanceProfileName": _InstanceProfileName, "Path": _Path, "Roles": _Roles }

-- | Constructs InstanceProfile's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceProfile' :: ArnType' -> DateType' -> IdType' -> InstanceProfileNameType' -> PathType' -> RoleListType' -> ( { "Path" :: (PathType') , "InstanceProfileName" :: (InstanceProfileNameType') , "InstanceProfileId" :: (IdType') , "Arn" :: (ArnType') , "CreateDate" :: (DateType') , "Roles" :: (RoleListType') } -> {"Path" :: (PathType') , "InstanceProfileName" :: (InstanceProfileNameType') , "InstanceProfileId" :: (IdType') , "Arn" :: (ArnType') , "CreateDate" :: (DateType') , "Roles" :: (RoleListType') } ) -> InstanceProfile
newInstanceProfile' _Arn _CreateDate _InstanceProfileId _InstanceProfileName _Path _Roles customize = (InstanceProfile <<< customize) { "Arn": _Arn, "CreateDate": _CreateDate, "InstanceProfileId": _InstanceProfileId, "InstanceProfileName": _InstanceProfileName, "Path": _Path, "Roles": _Roles }



-- | <p>The request was rejected because the authentication code was not recognized. The error message describes the specific error.</p>
newtype InvalidAuthenticationCodeException = InvalidAuthenticationCodeException 
  { "message" :: NullOrUndefined.NullOrUndefined (InvalidAuthenticationCodeMessage')
  }
derive instance newtypeInvalidAuthenticationCodeException :: Newtype InvalidAuthenticationCodeException _
derive instance repGenericInvalidAuthenticationCodeException :: Generic InvalidAuthenticationCodeException _
instance showInvalidAuthenticationCodeException :: Show InvalidAuthenticationCodeException where
  show = genericShow
instance decodeInvalidAuthenticationCodeException :: Decode InvalidAuthenticationCodeException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidAuthenticationCodeException :: Encode InvalidAuthenticationCodeException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidAuthenticationCodeException from required parameters
newInvalidAuthenticationCodeException :: InvalidAuthenticationCodeException
newInvalidAuthenticationCodeException  = InvalidAuthenticationCodeException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidAuthenticationCodeException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidAuthenticationCodeException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (InvalidAuthenticationCodeMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (InvalidAuthenticationCodeMessage') } ) -> InvalidAuthenticationCodeException
newInvalidAuthenticationCodeException'  customize = (InvalidAuthenticationCodeException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the certificate is invalid.</p>
newtype InvalidCertificateException = InvalidCertificateException 
  { "message" :: NullOrUndefined.NullOrUndefined (InvalidCertificateMessage')
  }
derive instance newtypeInvalidCertificateException :: Newtype InvalidCertificateException _
derive instance repGenericInvalidCertificateException :: Generic InvalidCertificateException _
instance showInvalidCertificateException :: Show InvalidCertificateException where
  show = genericShow
instance decodeInvalidCertificateException :: Decode InvalidCertificateException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidCertificateException :: Encode InvalidCertificateException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidCertificateException from required parameters
newInvalidCertificateException :: InvalidCertificateException
newInvalidCertificateException  = InvalidCertificateException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidCertificateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidCertificateException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (InvalidCertificateMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (InvalidCertificateMessage') } ) -> InvalidCertificateException
newInvalidCertificateException'  customize = (InvalidCertificateException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because an invalid or out-of-range value was supplied for an input parameter.</p>
newtype InvalidInputException = InvalidInputException 
  { "message" :: NullOrUndefined.NullOrUndefined (InvalidInputMessage')
  }
derive instance newtypeInvalidInputException :: Newtype InvalidInputException _
derive instance repGenericInvalidInputException :: Generic InvalidInputException _
instance showInvalidInputException :: Show InvalidInputException where
  show = genericShow
instance decodeInvalidInputException :: Decode InvalidInputException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidInputException :: Encode InvalidInputException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidInputException from required parameters
newInvalidInputException :: InvalidInputException
newInvalidInputException  = InvalidInputException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidInputException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidInputException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (InvalidInputMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (InvalidInputMessage') } ) -> InvalidInputException
newInvalidInputException'  customize = (InvalidInputException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the public key is malformed or otherwise invalid.</p>
newtype InvalidPublicKeyException = InvalidPublicKeyException 
  { "message" :: NullOrUndefined.NullOrUndefined (InvalidPublicKeyMessage')
  }
derive instance newtypeInvalidPublicKeyException :: Newtype InvalidPublicKeyException _
derive instance repGenericInvalidPublicKeyException :: Generic InvalidPublicKeyException _
instance showInvalidPublicKeyException :: Show InvalidPublicKeyException where
  show = genericShow
instance decodeInvalidPublicKeyException :: Decode InvalidPublicKeyException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidPublicKeyException :: Encode InvalidPublicKeyException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidPublicKeyException from required parameters
newInvalidPublicKeyException :: InvalidPublicKeyException
newInvalidPublicKeyException  = InvalidPublicKeyException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidPublicKeyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidPublicKeyException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (InvalidPublicKeyMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (InvalidPublicKeyMessage') } ) -> InvalidPublicKeyException
newInvalidPublicKeyException'  customize = (InvalidPublicKeyException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the type of user for the transaction was incorrect.</p>
newtype InvalidUserTypeException = InvalidUserTypeException 
  { "message" :: NullOrUndefined.NullOrUndefined (InvalidUserTypeMessage')
  }
derive instance newtypeInvalidUserTypeException :: Newtype InvalidUserTypeException _
derive instance repGenericInvalidUserTypeException :: Generic InvalidUserTypeException _
instance showInvalidUserTypeException :: Show InvalidUserTypeException where
  show = genericShow
instance decodeInvalidUserTypeException :: Decode InvalidUserTypeException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidUserTypeException :: Encode InvalidUserTypeException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidUserTypeException from required parameters
newInvalidUserTypeException :: InvalidUserTypeException
newInvalidUserTypeException  = InvalidUserTypeException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidUserTypeException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidUserTypeException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (InvalidUserTypeMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (InvalidUserTypeMessage') } ) -> InvalidUserTypeException
newInvalidUserTypeException'  customize = (InvalidUserTypeException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the public key certificate and the private key do not match.</p>
newtype KeyPairMismatchException = KeyPairMismatchException 
  { "message" :: NullOrUndefined.NullOrUndefined (KeyPairMismatchMessage')
  }
derive instance newtypeKeyPairMismatchException :: Newtype KeyPairMismatchException _
derive instance repGenericKeyPairMismatchException :: Generic KeyPairMismatchException _
instance showKeyPairMismatchException :: Show KeyPairMismatchException where
  show = genericShow
instance decodeKeyPairMismatchException :: Decode KeyPairMismatchException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeyPairMismatchException :: Encode KeyPairMismatchException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs KeyPairMismatchException from required parameters
newKeyPairMismatchException :: KeyPairMismatchException
newKeyPairMismatchException  = KeyPairMismatchException { "message": (NullOrUndefined Nothing) }

-- | Constructs KeyPairMismatchException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyPairMismatchException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (KeyPairMismatchMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (KeyPairMismatchMessage') } ) -> KeyPairMismatchException
newKeyPairMismatchException'  customize = (KeyPairMismatchException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because it attempted to create resources beyond the current AWS account limits. The error message describes the limit exceeded.</p>
newtype LimitExceededException = LimitExceededException 
  { "message" :: NullOrUndefined.NullOrUndefined (LimitExceededMessage')
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where
  show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLimitExceededException :: Encode LimitExceededException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "message": (NullOrUndefined Nothing) }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (LimitExceededMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (LimitExceededMessage') } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype LineNumber = LineNumber Int
derive instance newtypeLineNumber :: Newtype LineNumber _
derive instance repGenericLineNumber :: Generic LineNumber _
instance showLineNumber :: Show LineNumber where
  show = genericShow
instance decodeLineNumber :: Decode LineNumber where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLineNumber :: Encode LineNumber where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListAccessKeysRequest = ListAccessKeysRequest 
  { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListAccessKeysRequest :: Newtype ListAccessKeysRequest _
derive instance repGenericListAccessKeysRequest :: Generic ListAccessKeysRequest _
instance showListAccessKeysRequest :: Show ListAccessKeysRequest where
  show = genericShow
instance decodeListAccessKeysRequest :: Decode ListAccessKeysRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAccessKeysRequest :: Encode ListAccessKeysRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAccessKeysRequest from required parameters
newListAccessKeysRequest :: ListAccessKeysRequest
newListAccessKeysRequest  = ListAccessKeysRequest { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }

-- | Constructs ListAccessKeysRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAccessKeysRequest' :: ( { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListAccessKeysRequest
newListAccessKeysRequest'  customize = (ListAccessKeysRequest <<< customize) { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListAccessKeys</a> request. </p>
newtype ListAccessKeysResponse = ListAccessKeysResponse 
  { "AccessKeyMetadata" :: (AccessKeyMetadataListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListAccessKeysResponse :: Newtype ListAccessKeysResponse _
derive instance repGenericListAccessKeysResponse :: Generic ListAccessKeysResponse _
instance showListAccessKeysResponse :: Show ListAccessKeysResponse where
  show = genericShow
instance decodeListAccessKeysResponse :: Decode ListAccessKeysResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAccessKeysResponse :: Encode ListAccessKeysResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAccessKeysResponse from required parameters
newListAccessKeysResponse :: AccessKeyMetadataListType' -> ListAccessKeysResponse
newListAccessKeysResponse _AccessKeyMetadata = ListAccessKeysResponse { "AccessKeyMetadata": _AccessKeyMetadata, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListAccessKeysResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAccessKeysResponse' :: AccessKeyMetadataListType' -> ( { "AccessKeyMetadata" :: (AccessKeyMetadataListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"AccessKeyMetadata" :: (AccessKeyMetadataListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListAccessKeysResponse
newListAccessKeysResponse' _AccessKeyMetadata customize = (ListAccessKeysResponse <<< customize) { "AccessKeyMetadata": _AccessKeyMetadata, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListAccountAliasesRequest = ListAccountAliasesRequest 
  { "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListAccountAliasesRequest :: Newtype ListAccountAliasesRequest _
derive instance repGenericListAccountAliasesRequest :: Generic ListAccountAliasesRequest _
instance showListAccountAliasesRequest :: Show ListAccountAliasesRequest where
  show = genericShow
instance decodeListAccountAliasesRequest :: Decode ListAccountAliasesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAccountAliasesRequest :: Encode ListAccountAliasesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAccountAliasesRequest from required parameters
newListAccountAliasesRequest :: ListAccountAliasesRequest
newListAccountAliasesRequest  = ListAccountAliasesRequest { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }

-- | Constructs ListAccountAliasesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAccountAliasesRequest' :: ( { "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListAccountAliasesRequest
newListAccountAliasesRequest'  customize = (ListAccountAliasesRequest <<< customize) { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListAccountAliases</a> request. </p>
newtype ListAccountAliasesResponse = ListAccountAliasesResponse 
  { "AccountAliases" :: (AccountAliasListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListAccountAliasesResponse :: Newtype ListAccountAliasesResponse _
derive instance repGenericListAccountAliasesResponse :: Generic ListAccountAliasesResponse _
instance showListAccountAliasesResponse :: Show ListAccountAliasesResponse where
  show = genericShow
instance decodeListAccountAliasesResponse :: Decode ListAccountAliasesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAccountAliasesResponse :: Encode ListAccountAliasesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAccountAliasesResponse from required parameters
newListAccountAliasesResponse :: AccountAliasListType' -> ListAccountAliasesResponse
newListAccountAliasesResponse _AccountAliases = ListAccountAliasesResponse { "AccountAliases": _AccountAliases, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListAccountAliasesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAccountAliasesResponse' :: AccountAliasListType' -> ( { "AccountAliases" :: (AccountAliasListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"AccountAliases" :: (AccountAliasListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListAccountAliasesResponse
newListAccountAliasesResponse' _AccountAliases customize = (ListAccountAliasesResponse <<< customize) { "AccountAliases": _AccountAliases, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListAttachedGroupPoliciesRequest = ListAttachedGroupPoliciesRequest 
  { "GroupName" :: (GroupNameType')
  , "PathPrefix" :: NullOrUndefined.NullOrUndefined (PolicyPathType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListAttachedGroupPoliciesRequest :: Newtype ListAttachedGroupPoliciesRequest _
derive instance repGenericListAttachedGroupPoliciesRequest :: Generic ListAttachedGroupPoliciesRequest _
instance showListAttachedGroupPoliciesRequest :: Show ListAttachedGroupPoliciesRequest where
  show = genericShow
instance decodeListAttachedGroupPoliciesRequest :: Decode ListAttachedGroupPoliciesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAttachedGroupPoliciesRequest :: Encode ListAttachedGroupPoliciesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAttachedGroupPoliciesRequest from required parameters
newListAttachedGroupPoliciesRequest :: GroupNameType' -> ListAttachedGroupPoliciesRequest
newListAttachedGroupPoliciesRequest _GroupName = ListAttachedGroupPoliciesRequest { "GroupName": _GroupName, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing) }

-- | Constructs ListAttachedGroupPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttachedGroupPoliciesRequest' :: GroupNameType' -> ( { "GroupName" :: (GroupNameType') , "PathPrefix" :: NullOrUndefined.NullOrUndefined (PolicyPathType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"GroupName" :: (GroupNameType') , "PathPrefix" :: NullOrUndefined.NullOrUndefined (PolicyPathType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListAttachedGroupPoliciesRequest
newListAttachedGroupPoliciesRequest' _GroupName customize = (ListAttachedGroupPoliciesRequest <<< customize) { "GroupName": _GroupName, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListAttachedGroupPolicies</a> request. </p>
newtype ListAttachedGroupPoliciesResponse = ListAttachedGroupPoliciesResponse 
  { "AttachedPolicies" :: NullOrUndefined.NullOrUndefined (AttachedPoliciesListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListAttachedGroupPoliciesResponse :: Newtype ListAttachedGroupPoliciesResponse _
derive instance repGenericListAttachedGroupPoliciesResponse :: Generic ListAttachedGroupPoliciesResponse _
instance showListAttachedGroupPoliciesResponse :: Show ListAttachedGroupPoliciesResponse where
  show = genericShow
instance decodeListAttachedGroupPoliciesResponse :: Decode ListAttachedGroupPoliciesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAttachedGroupPoliciesResponse :: Encode ListAttachedGroupPoliciesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAttachedGroupPoliciesResponse from required parameters
newListAttachedGroupPoliciesResponse :: ListAttachedGroupPoliciesResponse
newListAttachedGroupPoliciesResponse  = ListAttachedGroupPoliciesResponse { "AttachedPolicies": (NullOrUndefined Nothing), "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListAttachedGroupPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttachedGroupPoliciesResponse' :: ( { "AttachedPolicies" :: NullOrUndefined.NullOrUndefined (AttachedPoliciesListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"AttachedPolicies" :: NullOrUndefined.NullOrUndefined (AttachedPoliciesListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListAttachedGroupPoliciesResponse
newListAttachedGroupPoliciesResponse'  customize = (ListAttachedGroupPoliciesResponse <<< customize) { "AttachedPolicies": (NullOrUndefined Nothing), "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListAttachedRolePoliciesRequest = ListAttachedRolePoliciesRequest 
  { "RoleName" :: (RoleNameType')
  , "PathPrefix" :: NullOrUndefined.NullOrUndefined (PolicyPathType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListAttachedRolePoliciesRequest :: Newtype ListAttachedRolePoliciesRequest _
derive instance repGenericListAttachedRolePoliciesRequest :: Generic ListAttachedRolePoliciesRequest _
instance showListAttachedRolePoliciesRequest :: Show ListAttachedRolePoliciesRequest where
  show = genericShow
instance decodeListAttachedRolePoliciesRequest :: Decode ListAttachedRolePoliciesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAttachedRolePoliciesRequest :: Encode ListAttachedRolePoliciesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAttachedRolePoliciesRequest from required parameters
newListAttachedRolePoliciesRequest :: RoleNameType' -> ListAttachedRolePoliciesRequest
newListAttachedRolePoliciesRequest _RoleName = ListAttachedRolePoliciesRequest { "RoleName": _RoleName, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing) }

-- | Constructs ListAttachedRolePoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttachedRolePoliciesRequest' :: RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "PathPrefix" :: NullOrUndefined.NullOrUndefined (PolicyPathType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"RoleName" :: (RoleNameType') , "PathPrefix" :: NullOrUndefined.NullOrUndefined (PolicyPathType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListAttachedRolePoliciesRequest
newListAttachedRolePoliciesRequest' _RoleName customize = (ListAttachedRolePoliciesRequest <<< customize) { "RoleName": _RoleName, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListAttachedRolePolicies</a> request. </p>
newtype ListAttachedRolePoliciesResponse = ListAttachedRolePoliciesResponse 
  { "AttachedPolicies" :: NullOrUndefined.NullOrUndefined (AttachedPoliciesListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListAttachedRolePoliciesResponse :: Newtype ListAttachedRolePoliciesResponse _
derive instance repGenericListAttachedRolePoliciesResponse :: Generic ListAttachedRolePoliciesResponse _
instance showListAttachedRolePoliciesResponse :: Show ListAttachedRolePoliciesResponse where
  show = genericShow
instance decodeListAttachedRolePoliciesResponse :: Decode ListAttachedRolePoliciesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAttachedRolePoliciesResponse :: Encode ListAttachedRolePoliciesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAttachedRolePoliciesResponse from required parameters
newListAttachedRolePoliciesResponse :: ListAttachedRolePoliciesResponse
newListAttachedRolePoliciesResponse  = ListAttachedRolePoliciesResponse { "AttachedPolicies": (NullOrUndefined Nothing), "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListAttachedRolePoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttachedRolePoliciesResponse' :: ( { "AttachedPolicies" :: NullOrUndefined.NullOrUndefined (AttachedPoliciesListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"AttachedPolicies" :: NullOrUndefined.NullOrUndefined (AttachedPoliciesListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListAttachedRolePoliciesResponse
newListAttachedRolePoliciesResponse'  customize = (ListAttachedRolePoliciesResponse <<< customize) { "AttachedPolicies": (NullOrUndefined Nothing), "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListAttachedUserPoliciesRequest = ListAttachedUserPoliciesRequest 
  { "UserName" :: (UserNameType')
  , "PathPrefix" :: NullOrUndefined.NullOrUndefined (PolicyPathType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListAttachedUserPoliciesRequest :: Newtype ListAttachedUserPoliciesRequest _
derive instance repGenericListAttachedUserPoliciesRequest :: Generic ListAttachedUserPoliciesRequest _
instance showListAttachedUserPoliciesRequest :: Show ListAttachedUserPoliciesRequest where
  show = genericShow
instance decodeListAttachedUserPoliciesRequest :: Decode ListAttachedUserPoliciesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAttachedUserPoliciesRequest :: Encode ListAttachedUserPoliciesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAttachedUserPoliciesRequest from required parameters
newListAttachedUserPoliciesRequest :: UserNameType' -> ListAttachedUserPoliciesRequest
newListAttachedUserPoliciesRequest _UserName = ListAttachedUserPoliciesRequest { "UserName": _UserName, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing) }

-- | Constructs ListAttachedUserPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttachedUserPoliciesRequest' :: UserNameType' -> ( { "UserName" :: (UserNameType') , "PathPrefix" :: NullOrUndefined.NullOrUndefined (PolicyPathType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"UserName" :: (UserNameType') , "PathPrefix" :: NullOrUndefined.NullOrUndefined (PolicyPathType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListAttachedUserPoliciesRequest
newListAttachedUserPoliciesRequest' _UserName customize = (ListAttachedUserPoliciesRequest <<< customize) { "UserName": _UserName, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListAttachedUserPolicies</a> request. </p>
newtype ListAttachedUserPoliciesResponse = ListAttachedUserPoliciesResponse 
  { "AttachedPolicies" :: NullOrUndefined.NullOrUndefined (AttachedPoliciesListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListAttachedUserPoliciesResponse :: Newtype ListAttachedUserPoliciesResponse _
derive instance repGenericListAttachedUserPoliciesResponse :: Generic ListAttachedUserPoliciesResponse _
instance showListAttachedUserPoliciesResponse :: Show ListAttachedUserPoliciesResponse where
  show = genericShow
instance decodeListAttachedUserPoliciesResponse :: Decode ListAttachedUserPoliciesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAttachedUserPoliciesResponse :: Encode ListAttachedUserPoliciesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAttachedUserPoliciesResponse from required parameters
newListAttachedUserPoliciesResponse :: ListAttachedUserPoliciesResponse
newListAttachedUserPoliciesResponse  = ListAttachedUserPoliciesResponse { "AttachedPolicies": (NullOrUndefined Nothing), "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListAttachedUserPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttachedUserPoliciesResponse' :: ( { "AttachedPolicies" :: NullOrUndefined.NullOrUndefined (AttachedPoliciesListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"AttachedPolicies" :: NullOrUndefined.NullOrUndefined (AttachedPoliciesListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListAttachedUserPoliciesResponse
newListAttachedUserPoliciesResponse'  customize = (ListAttachedUserPoliciesResponse <<< customize) { "AttachedPolicies": (NullOrUndefined Nothing), "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListEntitiesForPolicyRequest = ListEntitiesForPolicyRequest 
  { "PolicyArn" :: (ArnType')
  , "EntityFilter" :: NullOrUndefined.NullOrUndefined (EntityType)
  , "PathPrefix" :: NullOrUndefined.NullOrUndefined (PathType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListEntitiesForPolicyRequest :: Newtype ListEntitiesForPolicyRequest _
derive instance repGenericListEntitiesForPolicyRequest :: Generic ListEntitiesForPolicyRequest _
instance showListEntitiesForPolicyRequest :: Show ListEntitiesForPolicyRequest where
  show = genericShow
instance decodeListEntitiesForPolicyRequest :: Decode ListEntitiesForPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListEntitiesForPolicyRequest :: Encode ListEntitiesForPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListEntitiesForPolicyRequest from required parameters
newListEntitiesForPolicyRequest :: ArnType' -> ListEntitiesForPolicyRequest
newListEntitiesForPolicyRequest _PolicyArn = ListEntitiesForPolicyRequest { "PolicyArn": _PolicyArn, "EntityFilter": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing) }

-- | Constructs ListEntitiesForPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListEntitiesForPolicyRequest' :: ArnType' -> ( { "PolicyArn" :: (ArnType') , "EntityFilter" :: NullOrUndefined.NullOrUndefined (EntityType) , "PathPrefix" :: NullOrUndefined.NullOrUndefined (PathType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"PolicyArn" :: (ArnType') , "EntityFilter" :: NullOrUndefined.NullOrUndefined (EntityType) , "PathPrefix" :: NullOrUndefined.NullOrUndefined (PathType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListEntitiesForPolicyRequest
newListEntitiesForPolicyRequest' _PolicyArn customize = (ListEntitiesForPolicyRequest <<< customize) { "PolicyArn": _PolicyArn, "EntityFilter": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListEntitiesForPolicy</a> request. </p>
newtype ListEntitiesForPolicyResponse = ListEntitiesForPolicyResponse 
  { "PolicyGroups" :: NullOrUndefined.NullOrUndefined (PolicyGroupListType)
  , "PolicyUsers" :: NullOrUndefined.NullOrUndefined (PolicyUserListType)
  , "PolicyRoles" :: NullOrUndefined.NullOrUndefined (PolicyRoleListType)
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListEntitiesForPolicyResponse :: Newtype ListEntitiesForPolicyResponse _
derive instance repGenericListEntitiesForPolicyResponse :: Generic ListEntitiesForPolicyResponse _
instance showListEntitiesForPolicyResponse :: Show ListEntitiesForPolicyResponse where
  show = genericShow
instance decodeListEntitiesForPolicyResponse :: Decode ListEntitiesForPolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListEntitiesForPolicyResponse :: Encode ListEntitiesForPolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListEntitiesForPolicyResponse from required parameters
newListEntitiesForPolicyResponse :: ListEntitiesForPolicyResponse
newListEntitiesForPolicyResponse  = ListEntitiesForPolicyResponse { "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "PolicyGroups": (NullOrUndefined Nothing), "PolicyRoles": (NullOrUndefined Nothing), "PolicyUsers": (NullOrUndefined Nothing) }

-- | Constructs ListEntitiesForPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListEntitiesForPolicyResponse' :: ( { "PolicyGroups" :: NullOrUndefined.NullOrUndefined (PolicyGroupListType) , "PolicyUsers" :: NullOrUndefined.NullOrUndefined (PolicyUserListType) , "PolicyRoles" :: NullOrUndefined.NullOrUndefined (PolicyRoleListType) , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"PolicyGroups" :: NullOrUndefined.NullOrUndefined (PolicyGroupListType) , "PolicyUsers" :: NullOrUndefined.NullOrUndefined (PolicyUserListType) , "PolicyRoles" :: NullOrUndefined.NullOrUndefined (PolicyRoleListType) , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListEntitiesForPolicyResponse
newListEntitiesForPolicyResponse'  customize = (ListEntitiesForPolicyResponse <<< customize) { "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "PolicyGroups": (NullOrUndefined Nothing), "PolicyRoles": (NullOrUndefined Nothing), "PolicyUsers": (NullOrUndefined Nothing) }



newtype ListGroupPoliciesRequest = ListGroupPoliciesRequest 
  { "GroupName" :: (GroupNameType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListGroupPoliciesRequest :: Newtype ListGroupPoliciesRequest _
derive instance repGenericListGroupPoliciesRequest :: Generic ListGroupPoliciesRequest _
instance showListGroupPoliciesRequest :: Show ListGroupPoliciesRequest where
  show = genericShow
instance decodeListGroupPoliciesRequest :: Decode ListGroupPoliciesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListGroupPoliciesRequest :: Encode ListGroupPoliciesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListGroupPoliciesRequest from required parameters
newListGroupPoliciesRequest :: GroupNameType' -> ListGroupPoliciesRequest
newListGroupPoliciesRequest _GroupName = ListGroupPoliciesRequest { "GroupName": _GroupName, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }

-- | Constructs ListGroupPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupPoliciesRequest' :: GroupNameType' -> ( { "GroupName" :: (GroupNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"GroupName" :: (GroupNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListGroupPoliciesRequest
newListGroupPoliciesRequest' _GroupName customize = (ListGroupPoliciesRequest <<< customize) { "GroupName": _GroupName, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListGroupPolicies</a> request. </p>
newtype ListGroupPoliciesResponse = ListGroupPoliciesResponse 
  { "PolicyNames" :: (PolicyNameListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListGroupPoliciesResponse :: Newtype ListGroupPoliciesResponse _
derive instance repGenericListGroupPoliciesResponse :: Generic ListGroupPoliciesResponse _
instance showListGroupPoliciesResponse :: Show ListGroupPoliciesResponse where
  show = genericShow
instance decodeListGroupPoliciesResponse :: Decode ListGroupPoliciesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListGroupPoliciesResponse :: Encode ListGroupPoliciesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListGroupPoliciesResponse from required parameters
newListGroupPoliciesResponse :: PolicyNameListType' -> ListGroupPoliciesResponse
newListGroupPoliciesResponse _PolicyNames = ListGroupPoliciesResponse { "PolicyNames": _PolicyNames, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListGroupPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupPoliciesResponse' :: PolicyNameListType' -> ( { "PolicyNames" :: (PolicyNameListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"PolicyNames" :: (PolicyNameListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListGroupPoliciesResponse
newListGroupPoliciesResponse' _PolicyNames customize = (ListGroupPoliciesResponse <<< customize) { "PolicyNames": _PolicyNames, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListGroupsForUserRequest = ListGroupsForUserRequest 
  { "UserName" :: (ExistingUserNameType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListGroupsForUserRequest :: Newtype ListGroupsForUserRequest _
derive instance repGenericListGroupsForUserRequest :: Generic ListGroupsForUserRequest _
instance showListGroupsForUserRequest :: Show ListGroupsForUserRequest where
  show = genericShow
instance decodeListGroupsForUserRequest :: Decode ListGroupsForUserRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListGroupsForUserRequest :: Encode ListGroupsForUserRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListGroupsForUserRequest from required parameters
newListGroupsForUserRequest :: ExistingUserNameType' -> ListGroupsForUserRequest
newListGroupsForUserRequest _UserName = ListGroupsForUserRequest { "UserName": _UserName, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }

-- | Constructs ListGroupsForUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupsForUserRequest' :: ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"UserName" :: (ExistingUserNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListGroupsForUserRequest
newListGroupsForUserRequest' _UserName customize = (ListGroupsForUserRequest <<< customize) { "UserName": _UserName, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListGroupsForUser</a> request. </p>
newtype ListGroupsForUserResponse = ListGroupsForUserResponse 
  { "Groups" :: (GroupListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListGroupsForUserResponse :: Newtype ListGroupsForUserResponse _
derive instance repGenericListGroupsForUserResponse :: Generic ListGroupsForUserResponse _
instance showListGroupsForUserResponse :: Show ListGroupsForUserResponse where
  show = genericShow
instance decodeListGroupsForUserResponse :: Decode ListGroupsForUserResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListGroupsForUserResponse :: Encode ListGroupsForUserResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListGroupsForUserResponse from required parameters
newListGroupsForUserResponse :: GroupListType' -> ListGroupsForUserResponse
newListGroupsForUserResponse _Groups = ListGroupsForUserResponse { "Groups": _Groups, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListGroupsForUserResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupsForUserResponse' :: GroupListType' -> ( { "Groups" :: (GroupListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"Groups" :: (GroupListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListGroupsForUserResponse
newListGroupsForUserResponse' _Groups customize = (ListGroupsForUserResponse <<< customize) { "Groups": _Groups, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListGroupsRequest = ListGroupsRequest 
  { "PathPrefix" :: NullOrUndefined.NullOrUndefined (PathPrefixType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListGroupsRequest :: Newtype ListGroupsRequest _
derive instance repGenericListGroupsRequest :: Generic ListGroupsRequest _
instance showListGroupsRequest :: Show ListGroupsRequest where
  show = genericShow
instance decodeListGroupsRequest :: Decode ListGroupsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListGroupsRequest :: Encode ListGroupsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListGroupsRequest from required parameters
newListGroupsRequest :: ListGroupsRequest
newListGroupsRequest  = ListGroupsRequest { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing) }

-- | Constructs ListGroupsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupsRequest' :: ( { "PathPrefix" :: NullOrUndefined.NullOrUndefined (PathPrefixType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"PathPrefix" :: NullOrUndefined.NullOrUndefined (PathPrefixType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListGroupsRequest
newListGroupsRequest'  customize = (ListGroupsRequest <<< customize) { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListGroups</a> request. </p>
newtype ListGroupsResponse = ListGroupsResponse 
  { "Groups" :: (GroupListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListGroupsResponse :: Newtype ListGroupsResponse _
derive instance repGenericListGroupsResponse :: Generic ListGroupsResponse _
instance showListGroupsResponse :: Show ListGroupsResponse where
  show = genericShow
instance decodeListGroupsResponse :: Decode ListGroupsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListGroupsResponse :: Encode ListGroupsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListGroupsResponse from required parameters
newListGroupsResponse :: GroupListType' -> ListGroupsResponse
newListGroupsResponse _Groups = ListGroupsResponse { "Groups": _Groups, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListGroupsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupsResponse' :: GroupListType' -> ( { "Groups" :: (GroupListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"Groups" :: (GroupListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListGroupsResponse
newListGroupsResponse' _Groups customize = (ListGroupsResponse <<< customize) { "Groups": _Groups, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListInstanceProfilesForRoleRequest = ListInstanceProfilesForRoleRequest 
  { "RoleName" :: (RoleNameType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListInstanceProfilesForRoleRequest :: Newtype ListInstanceProfilesForRoleRequest _
derive instance repGenericListInstanceProfilesForRoleRequest :: Generic ListInstanceProfilesForRoleRequest _
instance showListInstanceProfilesForRoleRequest :: Show ListInstanceProfilesForRoleRequest where
  show = genericShow
instance decodeListInstanceProfilesForRoleRequest :: Decode ListInstanceProfilesForRoleRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListInstanceProfilesForRoleRequest :: Encode ListInstanceProfilesForRoleRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListInstanceProfilesForRoleRequest from required parameters
newListInstanceProfilesForRoleRequest :: RoleNameType' -> ListInstanceProfilesForRoleRequest
newListInstanceProfilesForRoleRequest _RoleName = ListInstanceProfilesForRoleRequest { "RoleName": _RoleName, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }

-- | Constructs ListInstanceProfilesForRoleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstanceProfilesForRoleRequest' :: RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"RoleName" :: (RoleNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListInstanceProfilesForRoleRequest
newListInstanceProfilesForRoleRequest' _RoleName customize = (ListInstanceProfilesForRoleRequest <<< customize) { "RoleName": _RoleName, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListInstanceProfilesForRole</a> request. </p>
newtype ListInstanceProfilesForRoleResponse = ListInstanceProfilesForRoleResponse 
  { "InstanceProfiles" :: (InstanceProfileListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListInstanceProfilesForRoleResponse :: Newtype ListInstanceProfilesForRoleResponse _
derive instance repGenericListInstanceProfilesForRoleResponse :: Generic ListInstanceProfilesForRoleResponse _
instance showListInstanceProfilesForRoleResponse :: Show ListInstanceProfilesForRoleResponse where
  show = genericShow
instance decodeListInstanceProfilesForRoleResponse :: Decode ListInstanceProfilesForRoleResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListInstanceProfilesForRoleResponse :: Encode ListInstanceProfilesForRoleResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListInstanceProfilesForRoleResponse from required parameters
newListInstanceProfilesForRoleResponse :: InstanceProfileListType' -> ListInstanceProfilesForRoleResponse
newListInstanceProfilesForRoleResponse _InstanceProfiles = ListInstanceProfilesForRoleResponse { "InstanceProfiles": _InstanceProfiles, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListInstanceProfilesForRoleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstanceProfilesForRoleResponse' :: InstanceProfileListType' -> ( { "InstanceProfiles" :: (InstanceProfileListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"InstanceProfiles" :: (InstanceProfileListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListInstanceProfilesForRoleResponse
newListInstanceProfilesForRoleResponse' _InstanceProfiles customize = (ListInstanceProfilesForRoleResponse <<< customize) { "InstanceProfiles": _InstanceProfiles, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListInstanceProfilesRequest = ListInstanceProfilesRequest 
  { "PathPrefix" :: NullOrUndefined.NullOrUndefined (PathPrefixType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListInstanceProfilesRequest :: Newtype ListInstanceProfilesRequest _
derive instance repGenericListInstanceProfilesRequest :: Generic ListInstanceProfilesRequest _
instance showListInstanceProfilesRequest :: Show ListInstanceProfilesRequest where
  show = genericShow
instance decodeListInstanceProfilesRequest :: Decode ListInstanceProfilesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListInstanceProfilesRequest :: Encode ListInstanceProfilesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListInstanceProfilesRequest from required parameters
newListInstanceProfilesRequest :: ListInstanceProfilesRequest
newListInstanceProfilesRequest  = ListInstanceProfilesRequest { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing) }

-- | Constructs ListInstanceProfilesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstanceProfilesRequest' :: ( { "PathPrefix" :: NullOrUndefined.NullOrUndefined (PathPrefixType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"PathPrefix" :: NullOrUndefined.NullOrUndefined (PathPrefixType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListInstanceProfilesRequest
newListInstanceProfilesRequest'  customize = (ListInstanceProfilesRequest <<< customize) { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListInstanceProfiles</a> request. </p>
newtype ListInstanceProfilesResponse = ListInstanceProfilesResponse 
  { "InstanceProfiles" :: (InstanceProfileListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListInstanceProfilesResponse :: Newtype ListInstanceProfilesResponse _
derive instance repGenericListInstanceProfilesResponse :: Generic ListInstanceProfilesResponse _
instance showListInstanceProfilesResponse :: Show ListInstanceProfilesResponse where
  show = genericShow
instance decodeListInstanceProfilesResponse :: Decode ListInstanceProfilesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListInstanceProfilesResponse :: Encode ListInstanceProfilesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListInstanceProfilesResponse from required parameters
newListInstanceProfilesResponse :: InstanceProfileListType' -> ListInstanceProfilesResponse
newListInstanceProfilesResponse _InstanceProfiles = ListInstanceProfilesResponse { "InstanceProfiles": _InstanceProfiles, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListInstanceProfilesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstanceProfilesResponse' :: InstanceProfileListType' -> ( { "InstanceProfiles" :: (InstanceProfileListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"InstanceProfiles" :: (InstanceProfileListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListInstanceProfilesResponse
newListInstanceProfilesResponse' _InstanceProfiles customize = (ListInstanceProfilesResponse <<< customize) { "InstanceProfiles": _InstanceProfiles, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListMFADevicesRequest = ListMFADevicesRequest 
  { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListMFADevicesRequest :: Newtype ListMFADevicesRequest _
derive instance repGenericListMFADevicesRequest :: Generic ListMFADevicesRequest _
instance showListMFADevicesRequest :: Show ListMFADevicesRequest where
  show = genericShow
instance decodeListMFADevicesRequest :: Decode ListMFADevicesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListMFADevicesRequest :: Encode ListMFADevicesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListMFADevicesRequest from required parameters
newListMFADevicesRequest :: ListMFADevicesRequest
newListMFADevicesRequest  = ListMFADevicesRequest { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }

-- | Constructs ListMFADevicesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListMFADevicesRequest' :: ( { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListMFADevicesRequest
newListMFADevicesRequest'  customize = (ListMFADevicesRequest <<< customize) { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListMFADevices</a> request. </p>
newtype ListMFADevicesResponse = ListMFADevicesResponse 
  { "MFADevices" :: (MfaDeviceListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListMFADevicesResponse :: Newtype ListMFADevicesResponse _
derive instance repGenericListMFADevicesResponse :: Generic ListMFADevicesResponse _
instance showListMFADevicesResponse :: Show ListMFADevicesResponse where
  show = genericShow
instance decodeListMFADevicesResponse :: Decode ListMFADevicesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListMFADevicesResponse :: Encode ListMFADevicesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListMFADevicesResponse from required parameters
newListMFADevicesResponse :: MfaDeviceListType' -> ListMFADevicesResponse
newListMFADevicesResponse _MFADevices = ListMFADevicesResponse { "MFADevices": _MFADevices, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListMFADevicesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListMFADevicesResponse' :: MfaDeviceListType' -> ( { "MFADevices" :: (MfaDeviceListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"MFADevices" :: (MfaDeviceListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListMFADevicesResponse
newListMFADevicesResponse' _MFADevices customize = (ListMFADevicesResponse <<< customize) { "MFADevices": _MFADevices, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListOpenIDConnectProvidersRequest = ListOpenIDConnectProvidersRequest Types.NoArguments
derive instance newtypeListOpenIDConnectProvidersRequest :: Newtype ListOpenIDConnectProvidersRequest _
derive instance repGenericListOpenIDConnectProvidersRequest :: Generic ListOpenIDConnectProvidersRequest _
instance showListOpenIDConnectProvidersRequest :: Show ListOpenIDConnectProvidersRequest where
  show = genericShow
instance decodeListOpenIDConnectProvidersRequest :: Decode ListOpenIDConnectProvidersRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOpenIDConnectProvidersRequest :: Encode ListOpenIDConnectProvidersRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains the response to a successful <a>ListOpenIDConnectProviders</a> request. </p>
newtype ListOpenIDConnectProvidersResponse = ListOpenIDConnectProvidersResponse 
  { "OpenIDConnectProviderList" :: NullOrUndefined.NullOrUndefined (OpenIDConnectProviderListType)
  }
derive instance newtypeListOpenIDConnectProvidersResponse :: Newtype ListOpenIDConnectProvidersResponse _
derive instance repGenericListOpenIDConnectProvidersResponse :: Generic ListOpenIDConnectProvidersResponse _
instance showListOpenIDConnectProvidersResponse :: Show ListOpenIDConnectProvidersResponse where
  show = genericShow
instance decodeListOpenIDConnectProvidersResponse :: Decode ListOpenIDConnectProvidersResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOpenIDConnectProvidersResponse :: Encode ListOpenIDConnectProvidersResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListOpenIDConnectProvidersResponse from required parameters
newListOpenIDConnectProvidersResponse :: ListOpenIDConnectProvidersResponse
newListOpenIDConnectProvidersResponse  = ListOpenIDConnectProvidersResponse { "OpenIDConnectProviderList": (NullOrUndefined Nothing) }

-- | Constructs ListOpenIDConnectProvidersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOpenIDConnectProvidersResponse' :: ( { "OpenIDConnectProviderList" :: NullOrUndefined.NullOrUndefined (OpenIDConnectProviderListType) } -> {"OpenIDConnectProviderList" :: NullOrUndefined.NullOrUndefined (OpenIDConnectProviderListType) } ) -> ListOpenIDConnectProvidersResponse
newListOpenIDConnectProvidersResponse'  customize = (ListOpenIDConnectProvidersResponse <<< customize) { "OpenIDConnectProviderList": (NullOrUndefined Nothing) }



newtype ListPoliciesRequest = ListPoliciesRequest 
  { "Scope" :: NullOrUndefined.NullOrUndefined (PolicyScopeType')
  , "OnlyAttached" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "PathPrefix" :: NullOrUndefined.NullOrUndefined (PolicyPathType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListPoliciesRequest :: Newtype ListPoliciesRequest _
derive instance repGenericListPoliciesRequest :: Generic ListPoliciesRequest _
instance showListPoliciesRequest :: Show ListPoliciesRequest where
  show = genericShow
instance decodeListPoliciesRequest :: Decode ListPoliciesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListPoliciesRequest :: Encode ListPoliciesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListPoliciesRequest from required parameters
newListPoliciesRequest :: ListPoliciesRequest
newListPoliciesRequest  = ListPoliciesRequest { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "OnlyAttached": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing), "Scope": (NullOrUndefined Nothing) }

-- | Constructs ListPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPoliciesRequest' :: ( { "Scope" :: NullOrUndefined.NullOrUndefined (PolicyScopeType') , "OnlyAttached" :: NullOrUndefined.NullOrUndefined (BooleanType') , "PathPrefix" :: NullOrUndefined.NullOrUndefined (PolicyPathType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"Scope" :: NullOrUndefined.NullOrUndefined (PolicyScopeType') , "OnlyAttached" :: NullOrUndefined.NullOrUndefined (BooleanType') , "PathPrefix" :: NullOrUndefined.NullOrUndefined (PolicyPathType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListPoliciesRequest
newListPoliciesRequest'  customize = (ListPoliciesRequest <<< customize) { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "OnlyAttached": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing), "Scope": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListPolicies</a> request. </p>
newtype ListPoliciesResponse = ListPoliciesResponse 
  { "Policies" :: NullOrUndefined.NullOrUndefined (PolicyListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListPoliciesResponse :: Newtype ListPoliciesResponse _
derive instance repGenericListPoliciesResponse :: Generic ListPoliciesResponse _
instance showListPoliciesResponse :: Show ListPoliciesResponse where
  show = genericShow
instance decodeListPoliciesResponse :: Decode ListPoliciesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListPoliciesResponse :: Encode ListPoliciesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListPoliciesResponse from required parameters
newListPoliciesResponse :: ListPoliciesResponse
newListPoliciesResponse  = ListPoliciesResponse { "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "Policies": (NullOrUndefined Nothing) }

-- | Constructs ListPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPoliciesResponse' :: ( { "Policies" :: NullOrUndefined.NullOrUndefined (PolicyListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"Policies" :: NullOrUndefined.NullOrUndefined (PolicyListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListPoliciesResponse
newListPoliciesResponse'  customize = (ListPoliciesResponse <<< customize) { "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "Policies": (NullOrUndefined Nothing) }



newtype ListPolicyVersionsRequest = ListPolicyVersionsRequest 
  { "PolicyArn" :: (ArnType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListPolicyVersionsRequest :: Newtype ListPolicyVersionsRequest _
derive instance repGenericListPolicyVersionsRequest :: Generic ListPolicyVersionsRequest _
instance showListPolicyVersionsRequest :: Show ListPolicyVersionsRequest where
  show = genericShow
instance decodeListPolicyVersionsRequest :: Decode ListPolicyVersionsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListPolicyVersionsRequest :: Encode ListPolicyVersionsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListPolicyVersionsRequest from required parameters
newListPolicyVersionsRequest :: ArnType' -> ListPolicyVersionsRequest
newListPolicyVersionsRequest _PolicyArn = ListPolicyVersionsRequest { "PolicyArn": _PolicyArn, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }

-- | Constructs ListPolicyVersionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPolicyVersionsRequest' :: ArnType' -> ( { "PolicyArn" :: (ArnType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"PolicyArn" :: (ArnType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListPolicyVersionsRequest
newListPolicyVersionsRequest' _PolicyArn customize = (ListPolicyVersionsRequest <<< customize) { "PolicyArn": _PolicyArn, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListPolicyVersions</a> request. </p>
newtype ListPolicyVersionsResponse = ListPolicyVersionsResponse 
  { "Versions" :: NullOrUndefined.NullOrUndefined (PolicyDocumentVersionListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListPolicyVersionsResponse :: Newtype ListPolicyVersionsResponse _
derive instance repGenericListPolicyVersionsResponse :: Generic ListPolicyVersionsResponse _
instance showListPolicyVersionsResponse :: Show ListPolicyVersionsResponse where
  show = genericShow
instance decodeListPolicyVersionsResponse :: Decode ListPolicyVersionsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListPolicyVersionsResponse :: Encode ListPolicyVersionsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListPolicyVersionsResponse from required parameters
newListPolicyVersionsResponse :: ListPolicyVersionsResponse
newListPolicyVersionsResponse  = ListPolicyVersionsResponse { "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "Versions": (NullOrUndefined Nothing) }

-- | Constructs ListPolicyVersionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPolicyVersionsResponse' :: ( { "Versions" :: NullOrUndefined.NullOrUndefined (PolicyDocumentVersionListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"Versions" :: NullOrUndefined.NullOrUndefined (PolicyDocumentVersionListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListPolicyVersionsResponse
newListPolicyVersionsResponse'  customize = (ListPolicyVersionsResponse <<< customize) { "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "Versions": (NullOrUndefined Nothing) }



newtype ListRolePoliciesRequest = ListRolePoliciesRequest 
  { "RoleName" :: (RoleNameType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListRolePoliciesRequest :: Newtype ListRolePoliciesRequest _
derive instance repGenericListRolePoliciesRequest :: Generic ListRolePoliciesRequest _
instance showListRolePoliciesRequest :: Show ListRolePoliciesRequest where
  show = genericShow
instance decodeListRolePoliciesRequest :: Decode ListRolePoliciesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListRolePoliciesRequest :: Encode ListRolePoliciesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListRolePoliciesRequest from required parameters
newListRolePoliciesRequest :: RoleNameType' -> ListRolePoliciesRequest
newListRolePoliciesRequest _RoleName = ListRolePoliciesRequest { "RoleName": _RoleName, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }

-- | Constructs ListRolePoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRolePoliciesRequest' :: RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"RoleName" :: (RoleNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListRolePoliciesRequest
newListRolePoliciesRequest' _RoleName customize = (ListRolePoliciesRequest <<< customize) { "RoleName": _RoleName, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListRolePolicies</a> request. </p>
newtype ListRolePoliciesResponse = ListRolePoliciesResponse 
  { "PolicyNames" :: (PolicyNameListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListRolePoliciesResponse :: Newtype ListRolePoliciesResponse _
derive instance repGenericListRolePoliciesResponse :: Generic ListRolePoliciesResponse _
instance showListRolePoliciesResponse :: Show ListRolePoliciesResponse where
  show = genericShow
instance decodeListRolePoliciesResponse :: Decode ListRolePoliciesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListRolePoliciesResponse :: Encode ListRolePoliciesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListRolePoliciesResponse from required parameters
newListRolePoliciesResponse :: PolicyNameListType' -> ListRolePoliciesResponse
newListRolePoliciesResponse _PolicyNames = ListRolePoliciesResponse { "PolicyNames": _PolicyNames, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListRolePoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRolePoliciesResponse' :: PolicyNameListType' -> ( { "PolicyNames" :: (PolicyNameListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"PolicyNames" :: (PolicyNameListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListRolePoliciesResponse
newListRolePoliciesResponse' _PolicyNames customize = (ListRolePoliciesResponse <<< customize) { "PolicyNames": _PolicyNames, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListRolesRequest = ListRolesRequest 
  { "PathPrefix" :: NullOrUndefined.NullOrUndefined (PathPrefixType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListRolesRequest :: Newtype ListRolesRequest _
derive instance repGenericListRolesRequest :: Generic ListRolesRequest _
instance showListRolesRequest :: Show ListRolesRequest where
  show = genericShow
instance decodeListRolesRequest :: Decode ListRolesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListRolesRequest :: Encode ListRolesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListRolesRequest from required parameters
newListRolesRequest :: ListRolesRequest
newListRolesRequest  = ListRolesRequest { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing) }

-- | Constructs ListRolesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRolesRequest' :: ( { "PathPrefix" :: NullOrUndefined.NullOrUndefined (PathPrefixType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"PathPrefix" :: NullOrUndefined.NullOrUndefined (PathPrefixType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListRolesRequest
newListRolesRequest'  customize = (ListRolesRequest <<< customize) { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListRoles</a> request. </p>
newtype ListRolesResponse = ListRolesResponse 
  { "Roles" :: (RoleListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListRolesResponse :: Newtype ListRolesResponse _
derive instance repGenericListRolesResponse :: Generic ListRolesResponse _
instance showListRolesResponse :: Show ListRolesResponse where
  show = genericShow
instance decodeListRolesResponse :: Decode ListRolesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListRolesResponse :: Encode ListRolesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListRolesResponse from required parameters
newListRolesResponse :: RoleListType' -> ListRolesResponse
newListRolesResponse _Roles = ListRolesResponse { "Roles": _Roles, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListRolesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRolesResponse' :: RoleListType' -> ( { "Roles" :: (RoleListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"Roles" :: (RoleListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListRolesResponse
newListRolesResponse' _Roles customize = (ListRolesResponse <<< customize) { "Roles": _Roles, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListSAMLProvidersRequest = ListSAMLProvidersRequest Types.NoArguments
derive instance newtypeListSAMLProvidersRequest :: Newtype ListSAMLProvidersRequest _
derive instance repGenericListSAMLProvidersRequest :: Generic ListSAMLProvidersRequest _
instance showListSAMLProvidersRequest :: Show ListSAMLProvidersRequest where
  show = genericShow
instance decodeListSAMLProvidersRequest :: Decode ListSAMLProvidersRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListSAMLProvidersRequest :: Encode ListSAMLProvidersRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains the response to a successful <a>ListSAMLProviders</a> request. </p>
newtype ListSAMLProvidersResponse = ListSAMLProvidersResponse 
  { "SAMLProviderList" :: NullOrUndefined.NullOrUndefined (SAMLProviderListType)
  }
derive instance newtypeListSAMLProvidersResponse :: Newtype ListSAMLProvidersResponse _
derive instance repGenericListSAMLProvidersResponse :: Generic ListSAMLProvidersResponse _
instance showListSAMLProvidersResponse :: Show ListSAMLProvidersResponse where
  show = genericShow
instance decodeListSAMLProvidersResponse :: Decode ListSAMLProvidersResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListSAMLProvidersResponse :: Encode ListSAMLProvidersResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListSAMLProvidersResponse from required parameters
newListSAMLProvidersResponse :: ListSAMLProvidersResponse
newListSAMLProvidersResponse  = ListSAMLProvidersResponse { "SAMLProviderList": (NullOrUndefined Nothing) }

-- | Constructs ListSAMLProvidersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSAMLProvidersResponse' :: ( { "SAMLProviderList" :: NullOrUndefined.NullOrUndefined (SAMLProviderListType) } -> {"SAMLProviderList" :: NullOrUndefined.NullOrUndefined (SAMLProviderListType) } ) -> ListSAMLProvidersResponse
newListSAMLProvidersResponse'  customize = (ListSAMLProvidersResponse <<< customize) { "SAMLProviderList": (NullOrUndefined Nothing) }



newtype ListSSHPublicKeysRequest = ListSSHPublicKeysRequest 
  { "UserName" :: NullOrUndefined.NullOrUndefined (UserNameType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListSSHPublicKeysRequest :: Newtype ListSSHPublicKeysRequest _
derive instance repGenericListSSHPublicKeysRequest :: Generic ListSSHPublicKeysRequest _
instance showListSSHPublicKeysRequest :: Show ListSSHPublicKeysRequest where
  show = genericShow
instance decodeListSSHPublicKeysRequest :: Decode ListSSHPublicKeysRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListSSHPublicKeysRequest :: Encode ListSSHPublicKeysRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListSSHPublicKeysRequest from required parameters
newListSSHPublicKeysRequest :: ListSSHPublicKeysRequest
newListSSHPublicKeysRequest  = ListSSHPublicKeysRequest { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }

-- | Constructs ListSSHPublicKeysRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSSHPublicKeysRequest' :: ( { "UserName" :: NullOrUndefined.NullOrUndefined (UserNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"UserName" :: NullOrUndefined.NullOrUndefined (UserNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListSSHPublicKeysRequest
newListSSHPublicKeysRequest'  customize = (ListSSHPublicKeysRequest <<< customize) { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListSSHPublicKeys</a> request.</p>
newtype ListSSHPublicKeysResponse = ListSSHPublicKeysResponse 
  { "SSHPublicKeys" :: NullOrUndefined.NullOrUndefined (SSHPublicKeyListType)
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListSSHPublicKeysResponse :: Newtype ListSSHPublicKeysResponse _
derive instance repGenericListSSHPublicKeysResponse :: Generic ListSSHPublicKeysResponse _
instance showListSSHPublicKeysResponse :: Show ListSSHPublicKeysResponse where
  show = genericShow
instance decodeListSSHPublicKeysResponse :: Decode ListSSHPublicKeysResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListSSHPublicKeysResponse :: Encode ListSSHPublicKeysResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListSSHPublicKeysResponse from required parameters
newListSSHPublicKeysResponse :: ListSSHPublicKeysResponse
newListSSHPublicKeysResponse  = ListSSHPublicKeysResponse { "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "SSHPublicKeys": (NullOrUndefined Nothing) }

-- | Constructs ListSSHPublicKeysResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSSHPublicKeysResponse' :: ( { "SSHPublicKeys" :: NullOrUndefined.NullOrUndefined (SSHPublicKeyListType) , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"SSHPublicKeys" :: NullOrUndefined.NullOrUndefined (SSHPublicKeyListType) , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListSSHPublicKeysResponse
newListSSHPublicKeysResponse'  customize = (ListSSHPublicKeysResponse <<< customize) { "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "SSHPublicKeys": (NullOrUndefined Nothing) }



newtype ListServerCertificatesRequest = ListServerCertificatesRequest 
  { "PathPrefix" :: NullOrUndefined.NullOrUndefined (PathPrefixType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListServerCertificatesRequest :: Newtype ListServerCertificatesRequest _
derive instance repGenericListServerCertificatesRequest :: Generic ListServerCertificatesRequest _
instance showListServerCertificatesRequest :: Show ListServerCertificatesRequest where
  show = genericShow
instance decodeListServerCertificatesRequest :: Decode ListServerCertificatesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListServerCertificatesRequest :: Encode ListServerCertificatesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListServerCertificatesRequest from required parameters
newListServerCertificatesRequest :: ListServerCertificatesRequest
newListServerCertificatesRequest  = ListServerCertificatesRequest { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing) }

-- | Constructs ListServerCertificatesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListServerCertificatesRequest' :: ( { "PathPrefix" :: NullOrUndefined.NullOrUndefined (PathPrefixType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"PathPrefix" :: NullOrUndefined.NullOrUndefined (PathPrefixType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListServerCertificatesRequest
newListServerCertificatesRequest'  customize = (ListServerCertificatesRequest <<< customize) { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListServerCertificates</a> request. </p>
newtype ListServerCertificatesResponse = ListServerCertificatesResponse 
  { "ServerCertificateMetadataList" :: (ServerCertificateMetadataListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListServerCertificatesResponse :: Newtype ListServerCertificatesResponse _
derive instance repGenericListServerCertificatesResponse :: Generic ListServerCertificatesResponse _
instance showListServerCertificatesResponse :: Show ListServerCertificatesResponse where
  show = genericShow
instance decodeListServerCertificatesResponse :: Decode ListServerCertificatesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListServerCertificatesResponse :: Encode ListServerCertificatesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListServerCertificatesResponse from required parameters
newListServerCertificatesResponse :: ServerCertificateMetadataListType' -> ListServerCertificatesResponse
newListServerCertificatesResponse _ServerCertificateMetadataList = ListServerCertificatesResponse { "ServerCertificateMetadataList": _ServerCertificateMetadataList, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListServerCertificatesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListServerCertificatesResponse' :: ServerCertificateMetadataListType' -> ( { "ServerCertificateMetadataList" :: (ServerCertificateMetadataListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"ServerCertificateMetadataList" :: (ServerCertificateMetadataListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListServerCertificatesResponse
newListServerCertificatesResponse' _ServerCertificateMetadataList customize = (ListServerCertificatesResponse <<< customize) { "ServerCertificateMetadataList": _ServerCertificateMetadataList, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListServiceSpecificCredentialsRequest = ListServiceSpecificCredentialsRequest 
  { "UserName" :: NullOrUndefined.NullOrUndefined (UserNameType')
  , "ServiceName" :: NullOrUndefined.NullOrUndefined (ServiceName')
  }
derive instance newtypeListServiceSpecificCredentialsRequest :: Newtype ListServiceSpecificCredentialsRequest _
derive instance repGenericListServiceSpecificCredentialsRequest :: Generic ListServiceSpecificCredentialsRequest _
instance showListServiceSpecificCredentialsRequest :: Show ListServiceSpecificCredentialsRequest where
  show = genericShow
instance decodeListServiceSpecificCredentialsRequest :: Decode ListServiceSpecificCredentialsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListServiceSpecificCredentialsRequest :: Encode ListServiceSpecificCredentialsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListServiceSpecificCredentialsRequest from required parameters
newListServiceSpecificCredentialsRequest :: ListServiceSpecificCredentialsRequest
newListServiceSpecificCredentialsRequest  = ListServiceSpecificCredentialsRequest { "ServiceName": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }

-- | Constructs ListServiceSpecificCredentialsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListServiceSpecificCredentialsRequest' :: ( { "UserName" :: NullOrUndefined.NullOrUndefined (UserNameType') , "ServiceName" :: NullOrUndefined.NullOrUndefined (ServiceName') } -> {"UserName" :: NullOrUndefined.NullOrUndefined (UserNameType') , "ServiceName" :: NullOrUndefined.NullOrUndefined (ServiceName') } ) -> ListServiceSpecificCredentialsRequest
newListServiceSpecificCredentialsRequest'  customize = (ListServiceSpecificCredentialsRequest <<< customize) { "ServiceName": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }



newtype ListServiceSpecificCredentialsResponse = ListServiceSpecificCredentialsResponse 
  { "ServiceSpecificCredentials" :: NullOrUndefined.NullOrUndefined (ServiceSpecificCredentialsListType)
  }
derive instance newtypeListServiceSpecificCredentialsResponse :: Newtype ListServiceSpecificCredentialsResponse _
derive instance repGenericListServiceSpecificCredentialsResponse :: Generic ListServiceSpecificCredentialsResponse _
instance showListServiceSpecificCredentialsResponse :: Show ListServiceSpecificCredentialsResponse where
  show = genericShow
instance decodeListServiceSpecificCredentialsResponse :: Decode ListServiceSpecificCredentialsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListServiceSpecificCredentialsResponse :: Encode ListServiceSpecificCredentialsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListServiceSpecificCredentialsResponse from required parameters
newListServiceSpecificCredentialsResponse :: ListServiceSpecificCredentialsResponse
newListServiceSpecificCredentialsResponse  = ListServiceSpecificCredentialsResponse { "ServiceSpecificCredentials": (NullOrUndefined Nothing) }

-- | Constructs ListServiceSpecificCredentialsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListServiceSpecificCredentialsResponse' :: ( { "ServiceSpecificCredentials" :: NullOrUndefined.NullOrUndefined (ServiceSpecificCredentialsListType) } -> {"ServiceSpecificCredentials" :: NullOrUndefined.NullOrUndefined (ServiceSpecificCredentialsListType) } ) -> ListServiceSpecificCredentialsResponse
newListServiceSpecificCredentialsResponse'  customize = (ListServiceSpecificCredentialsResponse <<< customize) { "ServiceSpecificCredentials": (NullOrUndefined Nothing) }



newtype ListSigningCertificatesRequest = ListSigningCertificatesRequest 
  { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListSigningCertificatesRequest :: Newtype ListSigningCertificatesRequest _
derive instance repGenericListSigningCertificatesRequest :: Generic ListSigningCertificatesRequest _
instance showListSigningCertificatesRequest :: Show ListSigningCertificatesRequest where
  show = genericShow
instance decodeListSigningCertificatesRequest :: Decode ListSigningCertificatesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListSigningCertificatesRequest :: Encode ListSigningCertificatesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListSigningCertificatesRequest from required parameters
newListSigningCertificatesRequest :: ListSigningCertificatesRequest
newListSigningCertificatesRequest  = ListSigningCertificatesRequest { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }

-- | Constructs ListSigningCertificatesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSigningCertificatesRequest' :: ( { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListSigningCertificatesRequest
newListSigningCertificatesRequest'  customize = (ListSigningCertificatesRequest <<< customize) { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListSigningCertificates</a> request. </p>
newtype ListSigningCertificatesResponse = ListSigningCertificatesResponse 
  { "Certificates" :: (CertificateListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListSigningCertificatesResponse :: Newtype ListSigningCertificatesResponse _
derive instance repGenericListSigningCertificatesResponse :: Generic ListSigningCertificatesResponse _
instance showListSigningCertificatesResponse :: Show ListSigningCertificatesResponse where
  show = genericShow
instance decodeListSigningCertificatesResponse :: Decode ListSigningCertificatesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListSigningCertificatesResponse :: Encode ListSigningCertificatesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListSigningCertificatesResponse from required parameters
newListSigningCertificatesResponse :: CertificateListType' -> ListSigningCertificatesResponse
newListSigningCertificatesResponse _Certificates = ListSigningCertificatesResponse { "Certificates": _Certificates, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListSigningCertificatesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSigningCertificatesResponse' :: CertificateListType' -> ( { "Certificates" :: (CertificateListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"Certificates" :: (CertificateListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListSigningCertificatesResponse
newListSigningCertificatesResponse' _Certificates customize = (ListSigningCertificatesResponse <<< customize) { "Certificates": _Certificates, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListUserPoliciesRequest = ListUserPoliciesRequest 
  { "UserName" :: (ExistingUserNameType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListUserPoliciesRequest :: Newtype ListUserPoliciesRequest _
derive instance repGenericListUserPoliciesRequest :: Generic ListUserPoliciesRequest _
instance showListUserPoliciesRequest :: Show ListUserPoliciesRequest where
  show = genericShow
instance decodeListUserPoliciesRequest :: Decode ListUserPoliciesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListUserPoliciesRequest :: Encode ListUserPoliciesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListUserPoliciesRequest from required parameters
newListUserPoliciesRequest :: ExistingUserNameType' -> ListUserPoliciesRequest
newListUserPoliciesRequest _UserName = ListUserPoliciesRequest { "UserName": _UserName, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }

-- | Constructs ListUserPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListUserPoliciesRequest' :: ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"UserName" :: (ExistingUserNameType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListUserPoliciesRequest
newListUserPoliciesRequest' _UserName customize = (ListUserPoliciesRequest <<< customize) { "UserName": _UserName, "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListUserPolicies</a> request. </p>
newtype ListUserPoliciesResponse = ListUserPoliciesResponse 
  { "PolicyNames" :: (PolicyNameListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListUserPoliciesResponse :: Newtype ListUserPoliciesResponse _
derive instance repGenericListUserPoliciesResponse :: Generic ListUserPoliciesResponse _
instance showListUserPoliciesResponse :: Show ListUserPoliciesResponse where
  show = genericShow
instance decodeListUserPoliciesResponse :: Decode ListUserPoliciesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListUserPoliciesResponse :: Encode ListUserPoliciesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListUserPoliciesResponse from required parameters
newListUserPoliciesResponse :: PolicyNameListType' -> ListUserPoliciesResponse
newListUserPoliciesResponse _PolicyNames = ListUserPoliciesResponse { "PolicyNames": _PolicyNames, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListUserPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListUserPoliciesResponse' :: PolicyNameListType' -> ( { "PolicyNames" :: (PolicyNameListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"PolicyNames" :: (PolicyNameListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListUserPoliciesResponse
newListUserPoliciesResponse' _PolicyNames customize = (ListUserPoliciesResponse <<< customize) { "PolicyNames": _PolicyNames, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListUsersRequest = ListUsersRequest 
  { "PathPrefix" :: NullOrUndefined.NullOrUndefined (PathPrefixType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListUsersRequest :: Newtype ListUsersRequest _
derive instance repGenericListUsersRequest :: Generic ListUsersRequest _
instance showListUsersRequest :: Show ListUsersRequest where
  show = genericShow
instance decodeListUsersRequest :: Decode ListUsersRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListUsersRequest :: Encode ListUsersRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListUsersRequest from required parameters
newListUsersRequest :: ListUsersRequest
newListUsersRequest  = ListUsersRequest { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing) }

-- | Constructs ListUsersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListUsersRequest' :: ( { "PathPrefix" :: NullOrUndefined.NullOrUndefined (PathPrefixType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"PathPrefix" :: NullOrUndefined.NullOrUndefined (PathPrefixType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListUsersRequest
newListUsersRequest'  customize = (ListUsersRequest <<< customize) { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PathPrefix": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListUsers</a> request. </p>
newtype ListUsersResponse = ListUsersResponse 
  { "Users" :: (UserListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListUsersResponse :: Newtype ListUsersResponse _
derive instance repGenericListUsersResponse :: Generic ListUsersResponse _
instance showListUsersResponse :: Show ListUsersResponse where
  show = genericShow
instance decodeListUsersResponse :: Decode ListUsersResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListUsersResponse :: Encode ListUsersResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListUsersResponse from required parameters
newListUsersResponse :: UserListType' -> ListUsersResponse
newListUsersResponse _Users = ListUsersResponse { "Users": _Users, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListUsersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListUsersResponse' :: UserListType' -> ( { "Users" :: (UserListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"Users" :: (UserListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListUsersResponse
newListUsersResponse' _Users customize = (ListUsersResponse <<< customize) { "Users": _Users, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListVirtualMFADevicesRequest = ListVirtualMFADevicesRequest 
  { "AssignmentStatus" :: NullOrUndefined.NullOrUndefined (AssignmentStatusType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  }
derive instance newtypeListVirtualMFADevicesRequest :: Newtype ListVirtualMFADevicesRequest _
derive instance repGenericListVirtualMFADevicesRequest :: Generic ListVirtualMFADevicesRequest _
instance showListVirtualMFADevicesRequest :: Show ListVirtualMFADevicesRequest where
  show = genericShow
instance decodeListVirtualMFADevicesRequest :: Decode ListVirtualMFADevicesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListVirtualMFADevicesRequest :: Encode ListVirtualMFADevicesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListVirtualMFADevicesRequest from required parameters
newListVirtualMFADevicesRequest :: ListVirtualMFADevicesRequest
newListVirtualMFADevicesRequest  = ListVirtualMFADevicesRequest { "AssignmentStatus": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }

-- | Constructs ListVirtualMFADevicesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListVirtualMFADevicesRequest' :: ( { "AssignmentStatus" :: NullOrUndefined.NullOrUndefined (AssignmentStatusType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } -> {"AssignmentStatus" :: NullOrUndefined.NullOrUndefined (AssignmentStatusType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') } ) -> ListVirtualMFADevicesRequest
newListVirtualMFADevicesRequest'  customize = (ListVirtualMFADevicesRequest <<< customize) { "AssignmentStatus": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>ListVirtualMFADevices</a> request. </p>
newtype ListVirtualMFADevicesResponse = ListVirtualMFADevicesResponse 
  { "VirtualMFADevices" :: (VirtualMFADeviceListType')
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeListVirtualMFADevicesResponse :: Newtype ListVirtualMFADevicesResponse _
derive instance repGenericListVirtualMFADevicesResponse :: Generic ListVirtualMFADevicesResponse _
instance showListVirtualMFADevicesResponse :: Show ListVirtualMFADevicesResponse where
  show = genericShow
instance decodeListVirtualMFADevicesResponse :: Decode ListVirtualMFADevicesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListVirtualMFADevicesResponse :: Encode ListVirtualMFADevicesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListVirtualMFADevicesResponse from required parameters
newListVirtualMFADevicesResponse :: VirtualMFADeviceListType' -> ListVirtualMFADevicesResponse
newListVirtualMFADevicesResponse _VirtualMFADevices = ListVirtualMFADevicesResponse { "VirtualMFADevices": _VirtualMFADevices, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListVirtualMFADevicesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListVirtualMFADevicesResponse' :: VirtualMFADeviceListType' -> ( { "VirtualMFADevices" :: (VirtualMFADeviceListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"VirtualMFADevices" :: (VirtualMFADeviceListType') , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> ListVirtualMFADevicesResponse
newListVirtualMFADevicesResponse' _VirtualMFADevices customize = (ListVirtualMFADevicesResponse <<< customize) { "VirtualMFADevices": _VirtualMFADevices, "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



-- | <p>Contains the user name and password create date for a user.</p> <p> This data type is used as a response element in the <a>CreateLoginProfile</a> and <a>GetLoginProfile</a> actions. </p>
newtype LoginProfile = LoginProfile 
  { "UserName" :: (UserNameType')
  , "CreateDate" :: (DateType')
  , "PasswordResetRequired" :: NullOrUndefined.NullOrUndefined (BooleanType')
  }
derive instance newtypeLoginProfile :: Newtype LoginProfile _
derive instance repGenericLoginProfile :: Generic LoginProfile _
instance showLoginProfile :: Show LoginProfile where
  show = genericShow
instance decodeLoginProfile :: Decode LoginProfile where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLoginProfile :: Encode LoginProfile where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LoginProfile from required parameters
newLoginProfile :: DateType' -> UserNameType' -> LoginProfile
newLoginProfile _CreateDate _UserName = LoginProfile { "CreateDate": _CreateDate, "UserName": _UserName, "PasswordResetRequired": (NullOrUndefined Nothing) }

-- | Constructs LoginProfile's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLoginProfile' :: DateType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "CreateDate" :: (DateType') , "PasswordResetRequired" :: NullOrUndefined.NullOrUndefined (BooleanType') } -> {"UserName" :: (UserNameType') , "CreateDate" :: (DateType') , "PasswordResetRequired" :: NullOrUndefined.NullOrUndefined (BooleanType') } ) -> LoginProfile
newLoginProfile' _CreateDate _UserName customize = (LoginProfile <<< customize) { "CreateDate": _CreateDate, "UserName": _UserName, "PasswordResetRequired": (NullOrUndefined Nothing) }



-- | <p>Contains information about an MFA device.</p> <p>This data type is used as a response element in the <a>ListMFADevices</a> action.</p>
newtype MFADevice = MFADevice 
  { "UserName" :: (UserNameType')
  , "SerialNumber" :: (SerialNumberType')
  , "EnableDate" :: (DateType')
  }
derive instance newtypeMFADevice :: Newtype MFADevice _
derive instance repGenericMFADevice :: Generic MFADevice _
instance showMFADevice :: Show MFADevice where
  show = genericShow
instance decodeMFADevice :: Decode MFADevice where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMFADevice :: Encode MFADevice where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs MFADevice from required parameters
newMFADevice :: DateType' -> SerialNumberType' -> UserNameType' -> MFADevice
newMFADevice _EnableDate _SerialNumber _UserName = MFADevice { "EnableDate": _EnableDate, "SerialNumber": _SerialNumber, "UserName": _UserName }

-- | Constructs MFADevice's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMFADevice' :: DateType' -> SerialNumberType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "SerialNumber" :: (SerialNumberType') , "EnableDate" :: (DateType') } -> {"UserName" :: (UserNameType') , "SerialNumber" :: (SerialNumberType') , "EnableDate" :: (DateType') } ) -> MFADevice
newMFADevice' _EnableDate _SerialNumber _UserName customize = (MFADevice <<< customize) { "EnableDate": _EnableDate, "SerialNumber": _SerialNumber, "UserName": _UserName }



-- | <p>The request was rejected because the certificate was malformed or expired. The error message describes the specific error.</p>
newtype MalformedCertificateException = MalformedCertificateException 
  { "message" :: NullOrUndefined.NullOrUndefined (MalformedCertificateMessage')
  }
derive instance newtypeMalformedCertificateException :: Newtype MalformedCertificateException _
derive instance repGenericMalformedCertificateException :: Generic MalformedCertificateException _
instance showMalformedCertificateException :: Show MalformedCertificateException where
  show = genericShow
instance decodeMalformedCertificateException :: Decode MalformedCertificateException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMalformedCertificateException :: Encode MalformedCertificateException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs MalformedCertificateException from required parameters
newMalformedCertificateException :: MalformedCertificateException
newMalformedCertificateException  = MalformedCertificateException { "message": (NullOrUndefined Nothing) }

-- | Constructs MalformedCertificateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMalformedCertificateException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (MalformedCertificateMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (MalformedCertificateMessage') } ) -> MalformedCertificateException
newMalformedCertificateException'  customize = (MalformedCertificateException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the policy document was malformed. The error message describes the specific error.</p>
newtype MalformedPolicyDocumentException = MalformedPolicyDocumentException 
  { "message" :: NullOrUndefined.NullOrUndefined (MalformedPolicyDocumentMessage')
  }
derive instance newtypeMalformedPolicyDocumentException :: Newtype MalformedPolicyDocumentException _
derive instance repGenericMalformedPolicyDocumentException :: Generic MalformedPolicyDocumentException _
instance showMalformedPolicyDocumentException :: Show MalformedPolicyDocumentException where
  show = genericShow
instance decodeMalformedPolicyDocumentException :: Decode MalformedPolicyDocumentException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMalformedPolicyDocumentException :: Encode MalformedPolicyDocumentException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs MalformedPolicyDocumentException from required parameters
newMalformedPolicyDocumentException :: MalformedPolicyDocumentException
newMalformedPolicyDocumentException  = MalformedPolicyDocumentException { "message": (NullOrUndefined Nothing) }

-- | Constructs MalformedPolicyDocumentException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMalformedPolicyDocumentException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (MalformedPolicyDocumentMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (MalformedPolicyDocumentMessage') } ) -> MalformedPolicyDocumentException
newMalformedPolicyDocumentException'  customize = (MalformedPolicyDocumentException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Contains information about a managed policy, including the policy's ARN, versions, and the number of principal entities (users, groups, and roles) that the policy is attached to.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p> <p>For more information about managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
newtype ManagedPolicyDetail = ManagedPolicyDetail 
  { "PolicyName" :: NullOrUndefined.NullOrUndefined (PolicyNameType')
  , "PolicyId" :: NullOrUndefined.NullOrUndefined (IdType')
  , "Arn" :: NullOrUndefined.NullOrUndefined (ArnType')
  , "Path" :: NullOrUndefined.NullOrUndefined (PolicyPathType')
  , "DefaultVersionId" :: NullOrUndefined.NullOrUndefined (PolicyVersionIdType')
  , "AttachmentCount" :: NullOrUndefined.NullOrUndefined (AttachmentCountType')
  , "IsAttachable" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Description" :: NullOrUndefined.NullOrUndefined (PolicyDescriptionType')
  , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType')
  , "UpdateDate" :: NullOrUndefined.NullOrUndefined (DateType')
  , "PolicyVersionList" :: NullOrUndefined.NullOrUndefined (PolicyDocumentVersionListType')
  }
derive instance newtypeManagedPolicyDetail :: Newtype ManagedPolicyDetail _
derive instance repGenericManagedPolicyDetail :: Generic ManagedPolicyDetail _
instance showManagedPolicyDetail :: Show ManagedPolicyDetail where
  show = genericShow
instance decodeManagedPolicyDetail :: Decode ManagedPolicyDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeManagedPolicyDetail :: Encode ManagedPolicyDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ManagedPolicyDetail from required parameters
newManagedPolicyDetail :: ManagedPolicyDetail
newManagedPolicyDetail  = ManagedPolicyDetail { "Arn": (NullOrUndefined Nothing), "AttachmentCount": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "DefaultVersionId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "IsAttachable": (NullOrUndefined Nothing), "Path": (NullOrUndefined Nothing), "PolicyId": (NullOrUndefined Nothing), "PolicyName": (NullOrUndefined Nothing), "PolicyVersionList": (NullOrUndefined Nothing), "UpdateDate": (NullOrUndefined Nothing) }

-- | Constructs ManagedPolicyDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newManagedPolicyDetail' :: ( { "PolicyName" :: NullOrUndefined.NullOrUndefined (PolicyNameType') , "PolicyId" :: NullOrUndefined.NullOrUndefined (IdType') , "Arn" :: NullOrUndefined.NullOrUndefined (ArnType') , "Path" :: NullOrUndefined.NullOrUndefined (PolicyPathType') , "DefaultVersionId" :: NullOrUndefined.NullOrUndefined (PolicyVersionIdType') , "AttachmentCount" :: NullOrUndefined.NullOrUndefined (AttachmentCountType') , "IsAttachable" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Description" :: NullOrUndefined.NullOrUndefined (PolicyDescriptionType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') , "UpdateDate" :: NullOrUndefined.NullOrUndefined (DateType') , "PolicyVersionList" :: NullOrUndefined.NullOrUndefined (PolicyDocumentVersionListType') } -> {"PolicyName" :: NullOrUndefined.NullOrUndefined (PolicyNameType') , "PolicyId" :: NullOrUndefined.NullOrUndefined (IdType') , "Arn" :: NullOrUndefined.NullOrUndefined (ArnType') , "Path" :: NullOrUndefined.NullOrUndefined (PolicyPathType') , "DefaultVersionId" :: NullOrUndefined.NullOrUndefined (PolicyVersionIdType') , "AttachmentCount" :: NullOrUndefined.NullOrUndefined (AttachmentCountType') , "IsAttachable" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Description" :: NullOrUndefined.NullOrUndefined (PolicyDescriptionType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') , "UpdateDate" :: NullOrUndefined.NullOrUndefined (DateType') , "PolicyVersionList" :: NullOrUndefined.NullOrUndefined (PolicyDocumentVersionListType') } ) -> ManagedPolicyDetail
newManagedPolicyDetail'  customize = (ManagedPolicyDetail <<< customize) { "Arn": (NullOrUndefined Nothing), "AttachmentCount": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "DefaultVersionId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "IsAttachable": (NullOrUndefined Nothing), "Path": (NullOrUndefined Nothing), "PolicyId": (NullOrUndefined Nothing), "PolicyName": (NullOrUndefined Nothing), "PolicyVersionList": (NullOrUndefined Nothing), "UpdateDate": (NullOrUndefined Nothing) }



newtype ManagedPolicyDetailListType = ManagedPolicyDetailListType (Array ManagedPolicyDetail)
derive instance newtypeManagedPolicyDetailListType :: Newtype ManagedPolicyDetailListType _
derive instance repGenericManagedPolicyDetailListType :: Generic ManagedPolicyDetailListType _
instance showManagedPolicyDetailListType :: Show ManagedPolicyDetailListType where
  show = genericShow
instance decodeManagedPolicyDetailListType :: Decode ManagedPolicyDetailListType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeManagedPolicyDetailListType :: Encode ManagedPolicyDetailListType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The request was rejected because it referenced an entity that does not exist. The error message describes the entity.</p>
newtype NoSuchEntityException = NoSuchEntityException 
  { "message" :: NullOrUndefined.NullOrUndefined (NoSuchEntityMessage')
  }
derive instance newtypeNoSuchEntityException :: Newtype NoSuchEntityException _
derive instance repGenericNoSuchEntityException :: Generic NoSuchEntityException _
instance showNoSuchEntityException :: Show NoSuchEntityException where
  show = genericShow
instance decodeNoSuchEntityException :: Decode NoSuchEntityException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNoSuchEntityException :: Encode NoSuchEntityException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NoSuchEntityException from required parameters
newNoSuchEntityException :: NoSuchEntityException
newNoSuchEntityException  = NoSuchEntityException { "message": (NullOrUndefined Nothing) }

-- | Constructs NoSuchEntityException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoSuchEntityException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (NoSuchEntityMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (NoSuchEntityMessage') } ) -> NoSuchEntityException
newNoSuchEntityException'  customize = (NoSuchEntityException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Contains the Amazon Resource Name (ARN) for an IAM OpenID Connect provider.</p>
newtype OpenIDConnectProviderListEntry = OpenIDConnectProviderListEntry 
  { "Arn" :: NullOrUndefined.NullOrUndefined (ArnType')
  }
derive instance newtypeOpenIDConnectProviderListEntry :: Newtype OpenIDConnectProviderListEntry _
derive instance repGenericOpenIDConnectProviderListEntry :: Generic OpenIDConnectProviderListEntry _
instance showOpenIDConnectProviderListEntry :: Show OpenIDConnectProviderListEntry where
  show = genericShow
instance decodeOpenIDConnectProviderListEntry :: Decode OpenIDConnectProviderListEntry where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOpenIDConnectProviderListEntry :: Encode OpenIDConnectProviderListEntry where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs OpenIDConnectProviderListEntry from required parameters
newOpenIDConnectProviderListEntry :: OpenIDConnectProviderListEntry
newOpenIDConnectProviderListEntry  = OpenIDConnectProviderListEntry { "Arn": (NullOrUndefined Nothing) }

-- | Constructs OpenIDConnectProviderListEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOpenIDConnectProviderListEntry' :: ( { "Arn" :: NullOrUndefined.NullOrUndefined (ArnType') } -> {"Arn" :: NullOrUndefined.NullOrUndefined (ArnType') } ) -> OpenIDConnectProviderListEntry
newOpenIDConnectProviderListEntry'  customize = (OpenIDConnectProviderListEntry <<< customize) { "Arn": (NullOrUndefined Nothing) }



-- | <p>Contains a list of IAM OpenID Connect providers.</p>
newtype OpenIDConnectProviderListType = OpenIDConnectProviderListType (Array OpenIDConnectProviderListEntry)
derive instance newtypeOpenIDConnectProviderListType :: Newtype OpenIDConnectProviderListType _
derive instance repGenericOpenIDConnectProviderListType :: Generic OpenIDConnectProviderListType _
instance showOpenIDConnectProviderListType :: Show OpenIDConnectProviderListType where
  show = genericShow
instance decodeOpenIDConnectProviderListType :: Decode OpenIDConnectProviderListType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOpenIDConnectProviderListType :: Encode OpenIDConnectProviderListType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains a URL that specifies the endpoint for an OpenID Connect provider.</p>
newtype OpenIDConnectProviderUrlType = OpenIDConnectProviderUrlType String
derive instance newtypeOpenIDConnectProviderUrlType :: Newtype OpenIDConnectProviderUrlType _
derive instance repGenericOpenIDConnectProviderUrlType :: Generic OpenIDConnectProviderUrlType _
instance showOpenIDConnectProviderUrlType :: Show OpenIDConnectProviderUrlType where
  show = genericShow
instance decodeOpenIDConnectProviderUrlType :: Decode OpenIDConnectProviderUrlType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOpenIDConnectProviderUrlType :: Encode OpenIDConnectProviderUrlType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains information about AWS Organizations's affect on a policy simulation.</p>
newtype OrganizationsDecisionDetail = OrganizationsDecisionDetail 
  { "AllowedByOrganizations" :: NullOrUndefined.NullOrUndefined (BooleanType')
  }
derive instance newtypeOrganizationsDecisionDetail :: Newtype OrganizationsDecisionDetail _
derive instance repGenericOrganizationsDecisionDetail :: Generic OrganizationsDecisionDetail _
instance showOrganizationsDecisionDetail :: Show OrganizationsDecisionDetail where
  show = genericShow
instance decodeOrganizationsDecisionDetail :: Decode OrganizationsDecisionDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOrganizationsDecisionDetail :: Encode OrganizationsDecisionDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs OrganizationsDecisionDetail from required parameters
newOrganizationsDecisionDetail :: OrganizationsDecisionDetail
newOrganizationsDecisionDetail  = OrganizationsDecisionDetail { "AllowedByOrganizations": (NullOrUndefined Nothing) }

-- | Constructs OrganizationsDecisionDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOrganizationsDecisionDetail' :: ( { "AllowedByOrganizations" :: NullOrUndefined.NullOrUndefined (BooleanType') } -> {"AllowedByOrganizations" :: NullOrUndefined.NullOrUndefined (BooleanType') } ) -> OrganizationsDecisionDetail
newOrganizationsDecisionDetail'  customize = (OrganizationsDecisionDetail <<< customize) { "AllowedByOrganizations": (NullOrUndefined Nothing) }



-- | <p>Contains information about the account password policy.</p> <p> This data type is used as a response element in the <a>GetAccountPasswordPolicy</a> action. </p>
newtype PasswordPolicy = PasswordPolicy 
  { "MinimumPasswordLength" :: NullOrUndefined.NullOrUndefined (MinimumPasswordLengthType')
  , "RequireSymbols" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "RequireNumbers" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "RequireUppercaseCharacters" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "RequireLowercaseCharacters" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "AllowUsersToChangePassword" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "ExpirePasswords" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "MaxPasswordAge" :: NullOrUndefined.NullOrUndefined (MaxPasswordAgeType')
  , "PasswordReusePrevention" :: NullOrUndefined.NullOrUndefined (PasswordReusePreventionType')
  , "HardExpiry" :: NullOrUndefined.NullOrUndefined (BooleanObjectType')
  }
derive instance newtypePasswordPolicy :: Newtype PasswordPolicy _
derive instance repGenericPasswordPolicy :: Generic PasswordPolicy _
instance showPasswordPolicy :: Show PasswordPolicy where
  show = genericShow
instance decodePasswordPolicy :: Decode PasswordPolicy where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePasswordPolicy :: Encode PasswordPolicy where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PasswordPolicy from required parameters
newPasswordPolicy :: PasswordPolicy
newPasswordPolicy  = PasswordPolicy { "AllowUsersToChangePassword": (NullOrUndefined Nothing), "ExpirePasswords": (NullOrUndefined Nothing), "HardExpiry": (NullOrUndefined Nothing), "MaxPasswordAge": (NullOrUndefined Nothing), "MinimumPasswordLength": (NullOrUndefined Nothing), "PasswordReusePrevention": (NullOrUndefined Nothing), "RequireLowercaseCharacters": (NullOrUndefined Nothing), "RequireNumbers": (NullOrUndefined Nothing), "RequireSymbols": (NullOrUndefined Nothing), "RequireUppercaseCharacters": (NullOrUndefined Nothing) }

-- | Constructs PasswordPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPasswordPolicy' :: ( { "MinimumPasswordLength" :: NullOrUndefined.NullOrUndefined (MinimumPasswordLengthType') , "RequireSymbols" :: NullOrUndefined.NullOrUndefined (BooleanType') , "RequireNumbers" :: NullOrUndefined.NullOrUndefined (BooleanType') , "RequireUppercaseCharacters" :: NullOrUndefined.NullOrUndefined (BooleanType') , "RequireLowercaseCharacters" :: NullOrUndefined.NullOrUndefined (BooleanType') , "AllowUsersToChangePassword" :: NullOrUndefined.NullOrUndefined (BooleanType') , "ExpirePasswords" :: NullOrUndefined.NullOrUndefined (BooleanType') , "MaxPasswordAge" :: NullOrUndefined.NullOrUndefined (MaxPasswordAgeType') , "PasswordReusePrevention" :: NullOrUndefined.NullOrUndefined (PasswordReusePreventionType') , "HardExpiry" :: NullOrUndefined.NullOrUndefined (BooleanObjectType') } -> {"MinimumPasswordLength" :: NullOrUndefined.NullOrUndefined (MinimumPasswordLengthType') , "RequireSymbols" :: NullOrUndefined.NullOrUndefined (BooleanType') , "RequireNumbers" :: NullOrUndefined.NullOrUndefined (BooleanType') , "RequireUppercaseCharacters" :: NullOrUndefined.NullOrUndefined (BooleanType') , "RequireLowercaseCharacters" :: NullOrUndefined.NullOrUndefined (BooleanType') , "AllowUsersToChangePassword" :: NullOrUndefined.NullOrUndefined (BooleanType') , "ExpirePasswords" :: NullOrUndefined.NullOrUndefined (BooleanType') , "MaxPasswordAge" :: NullOrUndefined.NullOrUndefined (MaxPasswordAgeType') , "PasswordReusePrevention" :: NullOrUndefined.NullOrUndefined (PasswordReusePreventionType') , "HardExpiry" :: NullOrUndefined.NullOrUndefined (BooleanObjectType') } ) -> PasswordPolicy
newPasswordPolicy'  customize = (PasswordPolicy <<< customize) { "AllowUsersToChangePassword": (NullOrUndefined Nothing), "ExpirePasswords": (NullOrUndefined Nothing), "HardExpiry": (NullOrUndefined Nothing), "MaxPasswordAge": (NullOrUndefined Nothing), "MinimumPasswordLength": (NullOrUndefined Nothing), "PasswordReusePrevention": (NullOrUndefined Nothing), "RequireLowercaseCharacters": (NullOrUndefined Nothing), "RequireNumbers": (NullOrUndefined Nothing), "RequireSymbols": (NullOrUndefined Nothing), "RequireUppercaseCharacters": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the provided password did not meet the requirements imposed by the account password policy.</p>
newtype PasswordPolicyViolationException = PasswordPolicyViolationException 
  { "message" :: NullOrUndefined.NullOrUndefined (PasswordPolicyViolationMessage')
  }
derive instance newtypePasswordPolicyViolationException :: Newtype PasswordPolicyViolationException _
derive instance repGenericPasswordPolicyViolationException :: Generic PasswordPolicyViolationException _
instance showPasswordPolicyViolationException :: Show PasswordPolicyViolationException where
  show = genericShow
instance decodePasswordPolicyViolationException :: Decode PasswordPolicyViolationException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePasswordPolicyViolationException :: Encode PasswordPolicyViolationException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PasswordPolicyViolationException from required parameters
newPasswordPolicyViolationException :: PasswordPolicyViolationException
newPasswordPolicyViolationException  = PasswordPolicyViolationException { "message": (NullOrUndefined Nothing) }

-- | Constructs PasswordPolicyViolationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPasswordPolicyViolationException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (PasswordPolicyViolationMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (PasswordPolicyViolationMessage') } ) -> PasswordPolicyViolationException
newPasswordPolicyViolationException'  customize = (PasswordPolicyViolationException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Contains information about a managed policy.</p> <p>This data type is used as a response element in the <a>CreatePolicy</a>, <a>GetPolicy</a>, and <a>ListPolicies</a> actions. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
newtype Policy = Policy 
  { "PolicyName" :: NullOrUndefined.NullOrUndefined (PolicyNameType')
  , "PolicyId" :: NullOrUndefined.NullOrUndefined (IdType')
  , "Arn" :: NullOrUndefined.NullOrUndefined (ArnType')
  , "Path" :: NullOrUndefined.NullOrUndefined (PolicyPathType')
  , "DefaultVersionId" :: NullOrUndefined.NullOrUndefined (PolicyVersionIdType')
  , "AttachmentCount" :: NullOrUndefined.NullOrUndefined (AttachmentCountType')
  , "IsAttachable" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Description" :: NullOrUndefined.NullOrUndefined (PolicyDescriptionType')
  , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType')
  , "UpdateDate" :: NullOrUndefined.NullOrUndefined (DateType')
  }
derive instance newtypePolicy :: Newtype Policy _
derive instance repGenericPolicy :: Generic Policy _
instance showPolicy :: Show Policy where
  show = genericShow
instance decodePolicy :: Decode Policy where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicy :: Encode Policy where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Policy from required parameters
newPolicy :: Policy
newPolicy  = Policy { "Arn": (NullOrUndefined Nothing), "AttachmentCount": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "DefaultVersionId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "IsAttachable": (NullOrUndefined Nothing), "Path": (NullOrUndefined Nothing), "PolicyId": (NullOrUndefined Nothing), "PolicyName": (NullOrUndefined Nothing), "UpdateDate": (NullOrUndefined Nothing) }

-- | Constructs Policy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicy' :: ( { "PolicyName" :: NullOrUndefined.NullOrUndefined (PolicyNameType') , "PolicyId" :: NullOrUndefined.NullOrUndefined (IdType') , "Arn" :: NullOrUndefined.NullOrUndefined (ArnType') , "Path" :: NullOrUndefined.NullOrUndefined (PolicyPathType') , "DefaultVersionId" :: NullOrUndefined.NullOrUndefined (PolicyVersionIdType') , "AttachmentCount" :: NullOrUndefined.NullOrUndefined (AttachmentCountType') , "IsAttachable" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Description" :: NullOrUndefined.NullOrUndefined (PolicyDescriptionType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') , "UpdateDate" :: NullOrUndefined.NullOrUndefined (DateType') } -> {"PolicyName" :: NullOrUndefined.NullOrUndefined (PolicyNameType') , "PolicyId" :: NullOrUndefined.NullOrUndefined (IdType') , "Arn" :: NullOrUndefined.NullOrUndefined (ArnType') , "Path" :: NullOrUndefined.NullOrUndefined (PolicyPathType') , "DefaultVersionId" :: NullOrUndefined.NullOrUndefined (PolicyVersionIdType') , "AttachmentCount" :: NullOrUndefined.NullOrUndefined (AttachmentCountType') , "IsAttachable" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Description" :: NullOrUndefined.NullOrUndefined (PolicyDescriptionType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') , "UpdateDate" :: NullOrUndefined.NullOrUndefined (DateType') } ) -> Policy
newPolicy'  customize = (Policy <<< customize) { "Arn": (NullOrUndefined Nothing), "AttachmentCount": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "DefaultVersionId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "IsAttachable": (NullOrUndefined Nothing), "Path": (NullOrUndefined Nothing), "PolicyId": (NullOrUndefined Nothing), "PolicyName": (NullOrUndefined Nothing), "UpdateDate": (NullOrUndefined Nothing) }



-- | <p>Contains information about an IAM policy, including the policy document.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>
newtype PolicyDetail = PolicyDetail 
  { "PolicyName" :: NullOrUndefined.NullOrUndefined (PolicyNameType')
  , "PolicyDocument" :: NullOrUndefined.NullOrUndefined (PolicyDocumentType')
  }
derive instance newtypePolicyDetail :: Newtype PolicyDetail _
derive instance repGenericPolicyDetail :: Generic PolicyDetail _
instance showPolicyDetail :: Show PolicyDetail where
  show = genericShow
instance decodePolicyDetail :: Decode PolicyDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyDetail :: Encode PolicyDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PolicyDetail from required parameters
newPolicyDetail :: PolicyDetail
newPolicyDetail  = PolicyDetail { "PolicyDocument": (NullOrUndefined Nothing), "PolicyName": (NullOrUndefined Nothing) }

-- | Constructs PolicyDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyDetail' :: ( { "PolicyName" :: NullOrUndefined.NullOrUndefined (PolicyNameType') , "PolicyDocument" :: NullOrUndefined.NullOrUndefined (PolicyDocumentType') } -> {"PolicyName" :: NullOrUndefined.NullOrUndefined (PolicyNameType') , "PolicyDocument" :: NullOrUndefined.NullOrUndefined (PolicyDocumentType') } ) -> PolicyDetail
newPolicyDetail'  customize = (PolicyDetail <<< customize) { "PolicyDocument": (NullOrUndefined Nothing), "PolicyName": (NullOrUndefined Nothing) }



newtype PolicyEvaluationDecisionType = PolicyEvaluationDecisionType String
derive instance newtypePolicyEvaluationDecisionType :: Newtype PolicyEvaluationDecisionType _
derive instance repGenericPolicyEvaluationDecisionType :: Generic PolicyEvaluationDecisionType _
instance showPolicyEvaluationDecisionType :: Show PolicyEvaluationDecisionType where
  show = genericShow
instance decodePolicyEvaluationDecisionType :: Decode PolicyEvaluationDecisionType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyEvaluationDecisionType :: Encode PolicyEvaluationDecisionType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The request failed because a provided policy could not be successfully evaluated. An additional detailed message indicates the source of the failure.</p>
newtype PolicyEvaluationException = PolicyEvaluationException 
  { "message" :: NullOrUndefined.NullOrUndefined (PolicyEvaluationErrorMessage')
  }
derive instance newtypePolicyEvaluationException :: Newtype PolicyEvaluationException _
derive instance repGenericPolicyEvaluationException :: Generic PolicyEvaluationException _
instance showPolicyEvaluationException :: Show PolicyEvaluationException where
  show = genericShow
instance decodePolicyEvaluationException :: Decode PolicyEvaluationException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyEvaluationException :: Encode PolicyEvaluationException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PolicyEvaluationException from required parameters
newPolicyEvaluationException :: PolicyEvaluationException
newPolicyEvaluationException  = PolicyEvaluationException { "message": (NullOrUndefined Nothing) }

-- | Constructs PolicyEvaluationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyEvaluationException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (PolicyEvaluationErrorMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (PolicyEvaluationErrorMessage') } ) -> PolicyEvaluationException
newPolicyEvaluationException'  customize = (PolicyEvaluationException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Contains information about a group that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> action. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
newtype PolicyGroup = PolicyGroup 
  { "GroupName" :: NullOrUndefined.NullOrUndefined (GroupNameType')
  , "GroupId" :: NullOrUndefined.NullOrUndefined (IdType')
  }
derive instance newtypePolicyGroup :: Newtype PolicyGroup _
derive instance repGenericPolicyGroup :: Generic PolicyGroup _
instance showPolicyGroup :: Show PolicyGroup where
  show = genericShow
instance decodePolicyGroup :: Decode PolicyGroup where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyGroup :: Encode PolicyGroup where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PolicyGroup from required parameters
newPolicyGroup :: PolicyGroup
newPolicyGroup  = PolicyGroup { "GroupId": (NullOrUndefined Nothing), "GroupName": (NullOrUndefined Nothing) }

-- | Constructs PolicyGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyGroup' :: ( { "GroupName" :: NullOrUndefined.NullOrUndefined (GroupNameType') , "GroupId" :: NullOrUndefined.NullOrUndefined (IdType') } -> {"GroupName" :: NullOrUndefined.NullOrUndefined (GroupNameType') , "GroupId" :: NullOrUndefined.NullOrUndefined (IdType') } ) -> PolicyGroup
newPolicyGroup'  customize = (PolicyGroup <<< customize) { "GroupId": (NullOrUndefined Nothing), "GroupName": (NullOrUndefined Nothing) }



newtype PolicyGroupListType = PolicyGroupListType (Array PolicyGroup)
derive instance newtypePolicyGroupListType :: Newtype PolicyGroupListType _
derive instance repGenericPolicyGroupListType :: Generic PolicyGroupListType _
instance showPolicyGroupListType :: Show PolicyGroupListType where
  show = genericShow
instance decodePolicyGroupListType :: Decode PolicyGroupListType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyGroupListType :: Encode PolicyGroupListType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyIdentifierType = PolicyIdentifierType String
derive instance newtypePolicyIdentifierType :: Newtype PolicyIdentifierType _
derive instance repGenericPolicyIdentifierType :: Generic PolicyIdentifierType _
instance showPolicyIdentifierType :: Show PolicyIdentifierType where
  show = genericShow
instance decodePolicyIdentifierType :: Decode PolicyIdentifierType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyIdentifierType :: Encode PolicyIdentifierType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The request failed because AWS service role policies can only be attached to the service-linked role for that service.</p>
newtype PolicyNotAttachableException = PolicyNotAttachableException 
  { "message" :: NullOrUndefined.NullOrUndefined (PolicyNotAttachableMessage')
  }
derive instance newtypePolicyNotAttachableException :: Newtype PolicyNotAttachableException _
derive instance repGenericPolicyNotAttachableException :: Generic PolicyNotAttachableException _
instance showPolicyNotAttachableException :: Show PolicyNotAttachableException where
  show = genericShow
instance decodePolicyNotAttachableException :: Decode PolicyNotAttachableException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyNotAttachableException :: Encode PolicyNotAttachableException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PolicyNotAttachableException from required parameters
newPolicyNotAttachableException :: PolicyNotAttachableException
newPolicyNotAttachableException  = PolicyNotAttachableException { "message": (NullOrUndefined Nothing) }

-- | Constructs PolicyNotAttachableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyNotAttachableException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (PolicyNotAttachableMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (PolicyNotAttachableMessage') } ) -> PolicyNotAttachableException
newPolicyNotAttachableException'  customize = (PolicyNotAttachableException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Contains information about a role that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> action. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
newtype PolicyRole = PolicyRole 
  { "RoleName" :: NullOrUndefined.NullOrUndefined (RoleNameType')
  , "RoleId" :: NullOrUndefined.NullOrUndefined (IdType')
  }
derive instance newtypePolicyRole :: Newtype PolicyRole _
derive instance repGenericPolicyRole :: Generic PolicyRole _
instance showPolicyRole :: Show PolicyRole where
  show = genericShow
instance decodePolicyRole :: Decode PolicyRole where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyRole :: Encode PolicyRole where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PolicyRole from required parameters
newPolicyRole :: PolicyRole
newPolicyRole  = PolicyRole { "RoleId": (NullOrUndefined Nothing), "RoleName": (NullOrUndefined Nothing) }

-- | Constructs PolicyRole's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyRole' :: ( { "RoleName" :: NullOrUndefined.NullOrUndefined (RoleNameType') , "RoleId" :: NullOrUndefined.NullOrUndefined (IdType') } -> {"RoleName" :: NullOrUndefined.NullOrUndefined (RoleNameType') , "RoleId" :: NullOrUndefined.NullOrUndefined (IdType') } ) -> PolicyRole
newPolicyRole'  customize = (PolicyRole <<< customize) { "RoleId": (NullOrUndefined Nothing), "RoleName": (NullOrUndefined Nothing) }



newtype PolicyRoleListType = PolicyRoleListType (Array PolicyRole)
derive instance newtypePolicyRoleListType :: Newtype PolicyRoleListType _
derive instance repGenericPolicyRoleListType :: Generic PolicyRoleListType _
instance showPolicyRoleListType :: Show PolicyRoleListType where
  show = genericShow
instance decodePolicyRoleListType :: Decode PolicyRoleListType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyRoleListType :: Encode PolicyRoleListType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicySourceType = PolicySourceType String
derive instance newtypePolicySourceType :: Newtype PolicySourceType _
derive instance repGenericPolicySourceType :: Generic PolicySourceType _
instance showPolicySourceType :: Show PolicySourceType where
  show = genericShow
instance decodePolicySourceType :: Decode PolicySourceType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicySourceType :: Encode PolicySourceType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains information about a user that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> action. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
newtype PolicyUser = PolicyUser 
  { "UserName" :: NullOrUndefined.NullOrUndefined (UserNameType')
  , "UserId" :: NullOrUndefined.NullOrUndefined (IdType')
  }
derive instance newtypePolicyUser :: Newtype PolicyUser _
derive instance repGenericPolicyUser :: Generic PolicyUser _
instance showPolicyUser :: Show PolicyUser where
  show = genericShow
instance decodePolicyUser :: Decode PolicyUser where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyUser :: Encode PolicyUser where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PolicyUser from required parameters
newPolicyUser :: PolicyUser
newPolicyUser  = PolicyUser { "UserId": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }

-- | Constructs PolicyUser's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyUser' :: ( { "UserName" :: NullOrUndefined.NullOrUndefined (UserNameType') , "UserId" :: NullOrUndefined.NullOrUndefined (IdType') } -> {"UserName" :: NullOrUndefined.NullOrUndefined (UserNameType') , "UserId" :: NullOrUndefined.NullOrUndefined (IdType') } ) -> PolicyUser
newPolicyUser'  customize = (PolicyUser <<< customize) { "UserId": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }



newtype PolicyUserListType = PolicyUserListType (Array PolicyUser)
derive instance newtypePolicyUserListType :: Newtype PolicyUserListType _
derive instance repGenericPolicyUserListType :: Generic PolicyUserListType _
instance showPolicyUserListType :: Show PolicyUserListType where
  show = genericShow
instance decodePolicyUserListType :: Decode PolicyUserListType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyUserListType :: Encode PolicyUserListType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains information about a version of a managed policy.</p> <p>This data type is used as a response element in the <a>CreatePolicyVersion</a>, <a>GetPolicyVersion</a>, <a>ListPolicyVersions</a>, and <a>GetAccountAuthorizationDetails</a> actions. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
newtype PolicyVersion = PolicyVersion 
  { "Document" :: NullOrUndefined.NullOrUndefined (PolicyDocumentType')
  , "VersionId" :: NullOrUndefined.NullOrUndefined (PolicyVersionIdType')
  , "IsDefaultVersion" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType')
  }
derive instance newtypePolicyVersion :: Newtype PolicyVersion _
derive instance repGenericPolicyVersion :: Generic PolicyVersion _
instance showPolicyVersion :: Show PolicyVersion where
  show = genericShow
instance decodePolicyVersion :: Decode PolicyVersion where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyVersion :: Encode PolicyVersion where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PolicyVersion from required parameters
newPolicyVersion :: PolicyVersion
newPolicyVersion  = PolicyVersion { "CreateDate": (NullOrUndefined Nothing), "Document": (NullOrUndefined Nothing), "IsDefaultVersion": (NullOrUndefined Nothing), "VersionId": (NullOrUndefined Nothing) }

-- | Constructs PolicyVersion's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyVersion' :: ( { "Document" :: NullOrUndefined.NullOrUndefined (PolicyDocumentType') , "VersionId" :: NullOrUndefined.NullOrUndefined (PolicyVersionIdType') , "IsDefaultVersion" :: NullOrUndefined.NullOrUndefined (BooleanType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') } -> {"Document" :: NullOrUndefined.NullOrUndefined (PolicyDocumentType') , "VersionId" :: NullOrUndefined.NullOrUndefined (PolicyVersionIdType') , "IsDefaultVersion" :: NullOrUndefined.NullOrUndefined (BooleanType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') } ) -> PolicyVersion
newPolicyVersion'  customize = (PolicyVersion <<< customize) { "CreateDate": (NullOrUndefined Nothing), "Document": (NullOrUndefined Nothing), "IsDefaultVersion": (NullOrUndefined Nothing), "VersionId": (NullOrUndefined Nothing) }



-- | <p>Contains the row and column of a location of a <code>Statement</code> element in a policy document.</p> <p>This data type is used as a member of the <code> <a>Statement</a> </code> type.</p>
newtype Position = Position 
  { "Line" :: NullOrUndefined.NullOrUndefined (LineNumber)
  , "Column" :: NullOrUndefined.NullOrUndefined (ColumnNumber)
  }
derive instance newtypePosition :: Newtype Position _
derive instance repGenericPosition :: Generic Position _
instance showPosition :: Show Position where
  show = genericShow
instance decodePosition :: Decode Position where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePosition :: Encode Position where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Position from required parameters
newPosition :: Position
newPosition  = Position { "Column": (NullOrUndefined Nothing), "Line": (NullOrUndefined Nothing) }

-- | Constructs Position's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPosition' :: ( { "Line" :: NullOrUndefined.NullOrUndefined (LineNumber) , "Column" :: NullOrUndefined.NullOrUndefined (ColumnNumber) } -> {"Line" :: NullOrUndefined.NullOrUndefined (LineNumber) , "Column" :: NullOrUndefined.NullOrUndefined (ColumnNumber) } ) -> Position
newPosition'  customize = (Position <<< customize) { "Column": (NullOrUndefined Nothing), "Line": (NullOrUndefined Nothing) }



newtype PutGroupPolicyRequest = PutGroupPolicyRequest 
  { "GroupName" :: (GroupNameType')
  , "PolicyName" :: (PolicyNameType')
  , "PolicyDocument" :: (PolicyDocumentType')
  }
derive instance newtypePutGroupPolicyRequest :: Newtype PutGroupPolicyRequest _
derive instance repGenericPutGroupPolicyRequest :: Generic PutGroupPolicyRequest _
instance showPutGroupPolicyRequest :: Show PutGroupPolicyRequest where
  show = genericShow
instance decodePutGroupPolicyRequest :: Decode PutGroupPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutGroupPolicyRequest :: Encode PutGroupPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutGroupPolicyRequest from required parameters
newPutGroupPolicyRequest :: GroupNameType' -> PolicyDocumentType' -> PolicyNameType' -> PutGroupPolicyRequest
newPutGroupPolicyRequest _GroupName _PolicyDocument _PolicyName = PutGroupPolicyRequest { "GroupName": _GroupName, "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName }

-- | Constructs PutGroupPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutGroupPolicyRequest' :: GroupNameType' -> PolicyDocumentType' -> PolicyNameType' -> ( { "GroupName" :: (GroupNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } -> {"GroupName" :: (GroupNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } ) -> PutGroupPolicyRequest
newPutGroupPolicyRequest' _GroupName _PolicyDocument _PolicyName customize = (PutGroupPolicyRequest <<< customize) { "GroupName": _GroupName, "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName }



newtype PutRolePolicyRequest = PutRolePolicyRequest 
  { "RoleName" :: (RoleNameType')
  , "PolicyName" :: (PolicyNameType')
  , "PolicyDocument" :: (PolicyDocumentType')
  }
derive instance newtypePutRolePolicyRequest :: Newtype PutRolePolicyRequest _
derive instance repGenericPutRolePolicyRequest :: Generic PutRolePolicyRequest _
instance showPutRolePolicyRequest :: Show PutRolePolicyRequest where
  show = genericShow
instance decodePutRolePolicyRequest :: Decode PutRolePolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutRolePolicyRequest :: Encode PutRolePolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutRolePolicyRequest from required parameters
newPutRolePolicyRequest :: PolicyDocumentType' -> PolicyNameType' -> RoleNameType' -> PutRolePolicyRequest
newPutRolePolicyRequest _PolicyDocument _PolicyName _RoleName = PutRolePolicyRequest { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "RoleName": _RoleName }

-- | Constructs PutRolePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutRolePolicyRequest' :: PolicyDocumentType' -> PolicyNameType' -> RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } -> {"RoleName" :: (RoleNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } ) -> PutRolePolicyRequest
newPutRolePolicyRequest' _PolicyDocument _PolicyName _RoleName customize = (PutRolePolicyRequest <<< customize) { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "RoleName": _RoleName }



newtype PutUserPolicyRequest = PutUserPolicyRequest 
  { "UserName" :: (ExistingUserNameType')
  , "PolicyName" :: (PolicyNameType')
  , "PolicyDocument" :: (PolicyDocumentType')
  }
derive instance newtypePutUserPolicyRequest :: Newtype PutUserPolicyRequest _
derive instance repGenericPutUserPolicyRequest :: Generic PutUserPolicyRequest _
instance showPutUserPolicyRequest :: Show PutUserPolicyRequest where
  show = genericShow
instance decodePutUserPolicyRequest :: Decode PutUserPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutUserPolicyRequest :: Encode PutUserPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutUserPolicyRequest from required parameters
newPutUserPolicyRequest :: PolicyDocumentType' -> PolicyNameType' -> ExistingUserNameType' -> PutUserPolicyRequest
newPutUserPolicyRequest _PolicyDocument _PolicyName _UserName = PutUserPolicyRequest { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "UserName": _UserName }

-- | Constructs PutUserPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutUserPolicyRequest' :: PolicyDocumentType' -> PolicyNameType' -> ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } -> {"UserName" :: (ExistingUserNameType') , "PolicyName" :: (PolicyNameType') , "PolicyDocument" :: (PolicyDocumentType') } ) -> PutUserPolicyRequest
newPutUserPolicyRequest' _PolicyDocument _PolicyName _UserName customize = (PutUserPolicyRequest <<< customize) { "PolicyDocument": _PolicyDocument, "PolicyName": _PolicyName, "UserName": _UserName }



newtype ReasonType = ReasonType String
derive instance newtypeReasonType :: Newtype ReasonType _
derive instance repGenericReasonType :: Generic ReasonType _
instance showReasonType :: Show ReasonType where
  show = genericShow
instance decodeReasonType :: Decode ReasonType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReasonType :: Encode ReasonType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RegionNameType = RegionNameType String
derive instance newtypeRegionNameType :: Newtype RegionNameType _
derive instance repGenericRegionNameType :: Generic RegionNameType _
instance showRegionNameType :: Show RegionNameType where
  show = genericShow
instance decodeRegionNameType :: Decode RegionNameType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegionNameType :: Encode RegionNameType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RemoveClientIDFromOpenIDConnectProviderRequest = RemoveClientIDFromOpenIDConnectProviderRequest 
  { "OpenIDConnectProviderArn" :: (ArnType')
  , "ClientID" :: (ClientIDType')
  }
derive instance newtypeRemoveClientIDFromOpenIDConnectProviderRequest :: Newtype RemoveClientIDFromOpenIDConnectProviderRequest _
derive instance repGenericRemoveClientIDFromOpenIDConnectProviderRequest :: Generic RemoveClientIDFromOpenIDConnectProviderRequest _
instance showRemoveClientIDFromOpenIDConnectProviderRequest :: Show RemoveClientIDFromOpenIDConnectProviderRequest where
  show = genericShow
instance decodeRemoveClientIDFromOpenIDConnectProviderRequest :: Decode RemoveClientIDFromOpenIDConnectProviderRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRemoveClientIDFromOpenIDConnectProviderRequest :: Encode RemoveClientIDFromOpenIDConnectProviderRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RemoveClientIDFromOpenIDConnectProviderRequest from required parameters
newRemoveClientIDFromOpenIDConnectProviderRequest :: ClientIDType' -> ArnType' -> RemoveClientIDFromOpenIDConnectProviderRequest
newRemoveClientIDFromOpenIDConnectProviderRequest _ClientID _OpenIDConnectProviderArn = RemoveClientIDFromOpenIDConnectProviderRequest { "ClientID": _ClientID, "OpenIDConnectProviderArn": _OpenIDConnectProviderArn }

-- | Constructs RemoveClientIDFromOpenIDConnectProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveClientIDFromOpenIDConnectProviderRequest' :: ClientIDType' -> ArnType' -> ( { "OpenIDConnectProviderArn" :: (ArnType') , "ClientID" :: (ClientIDType') } -> {"OpenIDConnectProviderArn" :: (ArnType') , "ClientID" :: (ClientIDType') } ) -> RemoveClientIDFromOpenIDConnectProviderRequest
newRemoveClientIDFromOpenIDConnectProviderRequest' _ClientID _OpenIDConnectProviderArn customize = (RemoveClientIDFromOpenIDConnectProviderRequest <<< customize) { "ClientID": _ClientID, "OpenIDConnectProviderArn": _OpenIDConnectProviderArn }



newtype RemoveRoleFromInstanceProfileRequest = RemoveRoleFromInstanceProfileRequest 
  { "InstanceProfileName" :: (InstanceProfileNameType')
  , "RoleName" :: (RoleNameType')
  }
derive instance newtypeRemoveRoleFromInstanceProfileRequest :: Newtype RemoveRoleFromInstanceProfileRequest _
derive instance repGenericRemoveRoleFromInstanceProfileRequest :: Generic RemoveRoleFromInstanceProfileRequest _
instance showRemoveRoleFromInstanceProfileRequest :: Show RemoveRoleFromInstanceProfileRequest where
  show = genericShow
instance decodeRemoveRoleFromInstanceProfileRequest :: Decode RemoveRoleFromInstanceProfileRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRemoveRoleFromInstanceProfileRequest :: Encode RemoveRoleFromInstanceProfileRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RemoveRoleFromInstanceProfileRequest from required parameters
newRemoveRoleFromInstanceProfileRequest :: InstanceProfileNameType' -> RoleNameType' -> RemoveRoleFromInstanceProfileRequest
newRemoveRoleFromInstanceProfileRequest _InstanceProfileName _RoleName = RemoveRoleFromInstanceProfileRequest { "InstanceProfileName": _InstanceProfileName, "RoleName": _RoleName }

-- | Constructs RemoveRoleFromInstanceProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveRoleFromInstanceProfileRequest' :: InstanceProfileNameType' -> RoleNameType' -> ( { "InstanceProfileName" :: (InstanceProfileNameType') , "RoleName" :: (RoleNameType') } -> {"InstanceProfileName" :: (InstanceProfileNameType') , "RoleName" :: (RoleNameType') } ) -> RemoveRoleFromInstanceProfileRequest
newRemoveRoleFromInstanceProfileRequest' _InstanceProfileName _RoleName customize = (RemoveRoleFromInstanceProfileRequest <<< customize) { "InstanceProfileName": _InstanceProfileName, "RoleName": _RoleName }



newtype RemoveUserFromGroupRequest = RemoveUserFromGroupRequest 
  { "GroupName" :: (GroupNameType')
  , "UserName" :: (ExistingUserNameType')
  }
derive instance newtypeRemoveUserFromGroupRequest :: Newtype RemoveUserFromGroupRequest _
derive instance repGenericRemoveUserFromGroupRequest :: Generic RemoveUserFromGroupRequest _
instance showRemoveUserFromGroupRequest :: Show RemoveUserFromGroupRequest where
  show = genericShow
instance decodeRemoveUserFromGroupRequest :: Decode RemoveUserFromGroupRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRemoveUserFromGroupRequest :: Encode RemoveUserFromGroupRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RemoveUserFromGroupRequest from required parameters
newRemoveUserFromGroupRequest :: GroupNameType' -> ExistingUserNameType' -> RemoveUserFromGroupRequest
newRemoveUserFromGroupRequest _GroupName _UserName = RemoveUserFromGroupRequest { "GroupName": _GroupName, "UserName": _UserName }

-- | Constructs RemoveUserFromGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveUserFromGroupRequest' :: GroupNameType' -> ExistingUserNameType' -> ( { "GroupName" :: (GroupNameType') , "UserName" :: (ExistingUserNameType') } -> {"GroupName" :: (GroupNameType') , "UserName" :: (ExistingUserNameType') } ) -> RemoveUserFromGroupRequest
newRemoveUserFromGroupRequest' _GroupName _UserName customize = (RemoveUserFromGroupRequest <<< customize) { "GroupName": _GroupName, "UserName": _UserName }



newtype ReportContentType = ReportContentType String
derive instance newtypeReportContentType :: Newtype ReportContentType _
derive instance repGenericReportContentType :: Generic ReportContentType _
instance showReportContentType :: Show ReportContentType where
  show = genericShow
instance decodeReportContentType :: Decode ReportContentType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReportContentType :: Encode ReportContentType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ReportFormatType = ReportFormatType String
derive instance newtypeReportFormatType :: Newtype ReportFormatType _
derive instance repGenericReportFormatType :: Generic ReportFormatType _
instance showReportFormatType :: Show ReportFormatType where
  show = genericShow
instance decodeReportFormatType :: Decode ReportFormatType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReportFormatType :: Encode ReportFormatType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ReportStateDescriptionType = ReportStateDescriptionType String
derive instance newtypeReportStateDescriptionType :: Newtype ReportStateDescriptionType _
derive instance repGenericReportStateDescriptionType :: Generic ReportStateDescriptionType _
instance showReportStateDescriptionType :: Show ReportStateDescriptionType where
  show = genericShow
instance decodeReportStateDescriptionType :: Decode ReportStateDescriptionType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReportStateDescriptionType :: Encode ReportStateDescriptionType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ReportStateType = ReportStateType String
derive instance newtypeReportStateType :: Newtype ReportStateType _
derive instance repGenericReportStateType :: Generic ReportStateType _
instance showReportStateType :: Show ReportStateType where
  show = genericShow
instance decodeReportStateType :: Decode ReportStateType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReportStateType :: Encode ReportStateType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResetServiceSpecificCredentialRequest = ResetServiceSpecificCredentialRequest 
  { "UserName" :: NullOrUndefined.NullOrUndefined (UserNameType')
  , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId')
  }
derive instance newtypeResetServiceSpecificCredentialRequest :: Newtype ResetServiceSpecificCredentialRequest _
derive instance repGenericResetServiceSpecificCredentialRequest :: Generic ResetServiceSpecificCredentialRequest _
instance showResetServiceSpecificCredentialRequest :: Show ResetServiceSpecificCredentialRequest where
  show = genericShow
instance decodeResetServiceSpecificCredentialRequest :: Decode ResetServiceSpecificCredentialRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResetServiceSpecificCredentialRequest :: Encode ResetServiceSpecificCredentialRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResetServiceSpecificCredentialRequest from required parameters
newResetServiceSpecificCredentialRequest :: ServiceSpecificCredentialId' -> ResetServiceSpecificCredentialRequest
newResetServiceSpecificCredentialRequest _ServiceSpecificCredentialId = ResetServiceSpecificCredentialRequest { "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "UserName": (NullOrUndefined Nothing) }

-- | Constructs ResetServiceSpecificCredentialRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResetServiceSpecificCredentialRequest' :: ServiceSpecificCredentialId' -> ( { "UserName" :: NullOrUndefined.NullOrUndefined (UserNameType') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') } -> {"UserName" :: NullOrUndefined.NullOrUndefined (UserNameType') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') } ) -> ResetServiceSpecificCredentialRequest
newResetServiceSpecificCredentialRequest' _ServiceSpecificCredentialId customize = (ResetServiceSpecificCredentialRequest <<< customize) { "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "UserName": (NullOrUndefined Nothing) }



newtype ResetServiceSpecificCredentialResponse = ResetServiceSpecificCredentialResponse 
  { "ServiceSpecificCredential" :: NullOrUndefined.NullOrUndefined (ServiceSpecificCredential)
  }
derive instance newtypeResetServiceSpecificCredentialResponse :: Newtype ResetServiceSpecificCredentialResponse _
derive instance repGenericResetServiceSpecificCredentialResponse :: Generic ResetServiceSpecificCredentialResponse _
instance showResetServiceSpecificCredentialResponse :: Show ResetServiceSpecificCredentialResponse where
  show = genericShow
instance decodeResetServiceSpecificCredentialResponse :: Decode ResetServiceSpecificCredentialResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResetServiceSpecificCredentialResponse :: Encode ResetServiceSpecificCredentialResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResetServiceSpecificCredentialResponse from required parameters
newResetServiceSpecificCredentialResponse :: ResetServiceSpecificCredentialResponse
newResetServiceSpecificCredentialResponse  = ResetServiceSpecificCredentialResponse { "ServiceSpecificCredential": (NullOrUndefined Nothing) }

-- | Constructs ResetServiceSpecificCredentialResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResetServiceSpecificCredentialResponse' :: ( { "ServiceSpecificCredential" :: NullOrUndefined.NullOrUndefined (ServiceSpecificCredential) } -> {"ServiceSpecificCredential" :: NullOrUndefined.NullOrUndefined (ServiceSpecificCredential) } ) -> ResetServiceSpecificCredentialResponse
newResetServiceSpecificCredentialResponse'  customize = (ResetServiceSpecificCredentialResponse <<< customize) { "ServiceSpecificCredential": (NullOrUndefined Nothing) }



newtype ResourceHandlingOptionType = ResourceHandlingOptionType String
derive instance newtypeResourceHandlingOptionType :: Newtype ResourceHandlingOptionType _
derive instance repGenericResourceHandlingOptionType :: Generic ResourceHandlingOptionType _
instance showResourceHandlingOptionType :: Show ResourceHandlingOptionType where
  show = genericShow
instance decodeResourceHandlingOptionType :: Decode ResourceHandlingOptionType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceHandlingOptionType :: Encode ResourceHandlingOptionType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResourceNameListType = ResourceNameListType (Array ResourceNameType)
derive instance newtypeResourceNameListType :: Newtype ResourceNameListType _
derive instance repGenericResourceNameListType :: Generic ResourceNameListType _
instance showResourceNameListType :: Show ResourceNameListType where
  show = genericShow
instance decodeResourceNameListType :: Decode ResourceNameListType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceNameListType :: Encode ResourceNameListType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResourceNameType = ResourceNameType String
derive instance newtypeResourceNameType :: Newtype ResourceNameType _
derive instance repGenericResourceNameType :: Generic ResourceNameType _
instance showResourceNameType :: Show ResourceNameType where
  show = genericShow
instance decodeResourceNameType :: Decode ResourceNameType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceNameType :: Encode ResourceNameType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains the result of the simulation of a single API action call on a single resource.</p> <p>This data type is used by a member of the <a>EvaluationResult</a> data type.</p>
newtype ResourceSpecificResult = ResourceSpecificResult 
  { "EvalResourceName" :: (ResourceNameType)
  , "EvalResourceDecision" :: (PolicyEvaluationDecisionType)
  , "MatchedStatements" :: NullOrUndefined.NullOrUndefined (StatementListType)
  , "MissingContextValues" :: NullOrUndefined.NullOrUndefined (ContextKeyNamesResultListType)
  , "EvalDecisionDetails" :: NullOrUndefined.NullOrUndefined (EvalDecisionDetailsType)
  }
derive instance newtypeResourceSpecificResult :: Newtype ResourceSpecificResult _
derive instance repGenericResourceSpecificResult :: Generic ResourceSpecificResult _
instance showResourceSpecificResult :: Show ResourceSpecificResult where
  show = genericShow
instance decodeResourceSpecificResult :: Decode ResourceSpecificResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceSpecificResult :: Encode ResourceSpecificResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResourceSpecificResult from required parameters
newResourceSpecificResult :: PolicyEvaluationDecisionType -> ResourceNameType -> ResourceSpecificResult
newResourceSpecificResult _EvalResourceDecision _EvalResourceName = ResourceSpecificResult { "EvalResourceDecision": _EvalResourceDecision, "EvalResourceName": _EvalResourceName, "EvalDecisionDetails": (NullOrUndefined Nothing), "MatchedStatements": (NullOrUndefined Nothing), "MissingContextValues": (NullOrUndefined Nothing) }

-- | Constructs ResourceSpecificResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceSpecificResult' :: PolicyEvaluationDecisionType -> ResourceNameType -> ( { "EvalResourceName" :: (ResourceNameType) , "EvalResourceDecision" :: (PolicyEvaluationDecisionType) , "MatchedStatements" :: NullOrUndefined.NullOrUndefined (StatementListType) , "MissingContextValues" :: NullOrUndefined.NullOrUndefined (ContextKeyNamesResultListType) , "EvalDecisionDetails" :: NullOrUndefined.NullOrUndefined (EvalDecisionDetailsType) } -> {"EvalResourceName" :: (ResourceNameType) , "EvalResourceDecision" :: (PolicyEvaluationDecisionType) , "MatchedStatements" :: NullOrUndefined.NullOrUndefined (StatementListType) , "MissingContextValues" :: NullOrUndefined.NullOrUndefined (ContextKeyNamesResultListType) , "EvalDecisionDetails" :: NullOrUndefined.NullOrUndefined (EvalDecisionDetailsType) } ) -> ResourceSpecificResult
newResourceSpecificResult' _EvalResourceDecision _EvalResourceName customize = (ResourceSpecificResult <<< customize) { "EvalResourceDecision": _EvalResourceDecision, "EvalResourceName": _EvalResourceName, "EvalDecisionDetails": (NullOrUndefined Nothing), "MatchedStatements": (NullOrUndefined Nothing), "MissingContextValues": (NullOrUndefined Nothing) }



newtype ResourceSpecificResultListType = ResourceSpecificResultListType (Array ResourceSpecificResult)
derive instance newtypeResourceSpecificResultListType :: Newtype ResourceSpecificResultListType _
derive instance repGenericResourceSpecificResultListType :: Generic ResourceSpecificResultListType _
instance showResourceSpecificResultListType :: Show ResourceSpecificResultListType where
  show = genericShow
instance decodeResourceSpecificResultListType :: Decode ResourceSpecificResultListType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceSpecificResultListType :: Encode ResourceSpecificResultListType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResyncMFADeviceRequest = ResyncMFADeviceRequest 
  { "UserName" :: (ExistingUserNameType')
  , "SerialNumber" :: (SerialNumberType')
  , "AuthenticationCode1" :: (AuthenticationCodeType')
  , "AuthenticationCode2" :: (AuthenticationCodeType')
  }
derive instance newtypeResyncMFADeviceRequest :: Newtype ResyncMFADeviceRequest _
derive instance repGenericResyncMFADeviceRequest :: Generic ResyncMFADeviceRequest _
instance showResyncMFADeviceRequest :: Show ResyncMFADeviceRequest where
  show = genericShow
instance decodeResyncMFADeviceRequest :: Decode ResyncMFADeviceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResyncMFADeviceRequest :: Encode ResyncMFADeviceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResyncMFADeviceRequest from required parameters
newResyncMFADeviceRequest :: AuthenticationCodeType' -> AuthenticationCodeType' -> SerialNumberType' -> ExistingUserNameType' -> ResyncMFADeviceRequest
newResyncMFADeviceRequest _AuthenticationCode1 _AuthenticationCode2 _SerialNumber _UserName = ResyncMFADeviceRequest { "AuthenticationCode1": _AuthenticationCode1, "AuthenticationCode2": _AuthenticationCode2, "SerialNumber": _SerialNumber, "UserName": _UserName }

-- | Constructs ResyncMFADeviceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResyncMFADeviceRequest' :: AuthenticationCodeType' -> AuthenticationCodeType' -> SerialNumberType' -> ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "SerialNumber" :: (SerialNumberType') , "AuthenticationCode1" :: (AuthenticationCodeType') , "AuthenticationCode2" :: (AuthenticationCodeType') } -> {"UserName" :: (ExistingUserNameType') , "SerialNumber" :: (SerialNumberType') , "AuthenticationCode1" :: (AuthenticationCodeType') , "AuthenticationCode2" :: (AuthenticationCodeType') } ) -> ResyncMFADeviceRequest
newResyncMFADeviceRequest' _AuthenticationCode1 _AuthenticationCode2 _SerialNumber _UserName customize = (ResyncMFADeviceRequest <<< customize) { "AuthenticationCode1": _AuthenticationCode1, "AuthenticationCode2": _AuthenticationCode2, "SerialNumber": _SerialNumber, "UserName": _UserName }



-- | <p>Contains information about an IAM role. This structure is returned as a response element in several APIs that interact with roles.</p>
newtype Role = Role 
  { "Path" :: (PathType')
  , "RoleName" :: (RoleNameType')
  , "RoleId" :: (IdType')
  , "Arn" :: (ArnType')
  , "CreateDate" :: (DateType')
  , "AssumeRolePolicyDocument" :: NullOrUndefined.NullOrUndefined (PolicyDocumentType')
  , "Description" :: NullOrUndefined.NullOrUndefined (RoleDescriptionType')
  }
derive instance newtypeRole :: Newtype Role _
derive instance repGenericRole :: Generic Role _
instance showRole :: Show Role where
  show = genericShow
instance decodeRole :: Decode Role where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRole :: Encode Role where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Role from required parameters
newRole :: ArnType' -> DateType' -> PathType' -> IdType' -> RoleNameType' -> Role
newRole _Arn _CreateDate _Path _RoleId _RoleName = Role { "Arn": _Arn, "CreateDate": _CreateDate, "Path": _Path, "RoleId": _RoleId, "RoleName": _RoleName, "AssumeRolePolicyDocument": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing) }

-- | Constructs Role's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRole' :: ArnType' -> DateType' -> PathType' -> IdType' -> RoleNameType' -> ( { "Path" :: (PathType') , "RoleName" :: (RoleNameType') , "RoleId" :: (IdType') , "Arn" :: (ArnType') , "CreateDate" :: (DateType') , "AssumeRolePolicyDocument" :: NullOrUndefined.NullOrUndefined (PolicyDocumentType') , "Description" :: NullOrUndefined.NullOrUndefined (RoleDescriptionType') } -> {"Path" :: (PathType') , "RoleName" :: (RoleNameType') , "RoleId" :: (IdType') , "Arn" :: (ArnType') , "CreateDate" :: (DateType') , "AssumeRolePolicyDocument" :: NullOrUndefined.NullOrUndefined (PolicyDocumentType') , "Description" :: NullOrUndefined.NullOrUndefined (RoleDescriptionType') } ) -> Role
newRole' _Arn _CreateDate _Path _RoleId _RoleName customize = (Role <<< customize) { "Arn": _Arn, "CreateDate": _CreateDate, "Path": _Path, "RoleId": _RoleId, "RoleName": _RoleName, "AssumeRolePolicyDocument": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing) }



-- | <p>Contains information about an IAM role, including all of the role's policies.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>
newtype RoleDetail = RoleDetail 
  { "Path" :: NullOrUndefined.NullOrUndefined (PathType')
  , "RoleName" :: NullOrUndefined.NullOrUndefined (RoleNameType')
  , "RoleId" :: NullOrUndefined.NullOrUndefined (IdType')
  , "Arn" :: NullOrUndefined.NullOrUndefined (ArnType')
  , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType')
  , "AssumeRolePolicyDocument" :: NullOrUndefined.NullOrUndefined (PolicyDocumentType')
  , "InstanceProfileList" :: NullOrUndefined.NullOrUndefined (InstanceProfileListType')
  , "RolePolicyList" :: NullOrUndefined.NullOrUndefined (PolicyDetailListType')
  , "AttachedManagedPolicies" :: NullOrUndefined.NullOrUndefined (AttachedPoliciesListType')
  }
derive instance newtypeRoleDetail :: Newtype RoleDetail _
derive instance repGenericRoleDetail :: Generic RoleDetail _
instance showRoleDetail :: Show RoleDetail where
  show = genericShow
instance decodeRoleDetail :: Decode RoleDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRoleDetail :: Encode RoleDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RoleDetail from required parameters
newRoleDetail :: RoleDetail
newRoleDetail  = RoleDetail { "Arn": (NullOrUndefined Nothing), "AssumeRolePolicyDocument": (NullOrUndefined Nothing), "AttachedManagedPolicies": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "InstanceProfileList": (NullOrUndefined Nothing), "Path": (NullOrUndefined Nothing), "RoleId": (NullOrUndefined Nothing), "RoleName": (NullOrUndefined Nothing), "RolePolicyList": (NullOrUndefined Nothing) }

-- | Constructs RoleDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRoleDetail' :: ( { "Path" :: NullOrUndefined.NullOrUndefined (PathType') , "RoleName" :: NullOrUndefined.NullOrUndefined (RoleNameType') , "RoleId" :: NullOrUndefined.NullOrUndefined (IdType') , "Arn" :: NullOrUndefined.NullOrUndefined (ArnType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') , "AssumeRolePolicyDocument" :: NullOrUndefined.NullOrUndefined (PolicyDocumentType') , "InstanceProfileList" :: NullOrUndefined.NullOrUndefined (InstanceProfileListType') , "RolePolicyList" :: NullOrUndefined.NullOrUndefined (PolicyDetailListType') , "AttachedManagedPolicies" :: NullOrUndefined.NullOrUndefined (AttachedPoliciesListType') } -> {"Path" :: NullOrUndefined.NullOrUndefined (PathType') , "RoleName" :: NullOrUndefined.NullOrUndefined (RoleNameType') , "RoleId" :: NullOrUndefined.NullOrUndefined (IdType') , "Arn" :: NullOrUndefined.NullOrUndefined (ArnType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') , "AssumeRolePolicyDocument" :: NullOrUndefined.NullOrUndefined (PolicyDocumentType') , "InstanceProfileList" :: NullOrUndefined.NullOrUndefined (InstanceProfileListType') , "RolePolicyList" :: NullOrUndefined.NullOrUndefined (PolicyDetailListType') , "AttachedManagedPolicies" :: NullOrUndefined.NullOrUndefined (AttachedPoliciesListType') } ) -> RoleDetail
newRoleDetail'  customize = (RoleDetail <<< customize) { "Arn": (NullOrUndefined Nothing), "AssumeRolePolicyDocument": (NullOrUndefined Nothing), "AttachedManagedPolicies": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "InstanceProfileList": (NullOrUndefined Nothing), "Path": (NullOrUndefined Nothing), "RoleId": (NullOrUndefined Nothing), "RoleName": (NullOrUndefined Nothing), "RolePolicyList": (NullOrUndefined Nothing) }



newtype RoleUsageListType = RoleUsageListType (Array RoleUsageType)
derive instance newtypeRoleUsageListType :: Newtype RoleUsageListType _
derive instance repGenericRoleUsageListType :: Generic RoleUsageListType _
instance showRoleUsageListType :: Show RoleUsageListType where
  show = genericShow
instance decodeRoleUsageListType :: Decode RoleUsageListType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRoleUsageListType :: Encode RoleUsageListType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An object that contains details about how a service-linked role is used.</p> <p>This data type is used as a response element in the <a>GetServiceLinkedRoleDeletionStatus</a> operation.</p>
newtype RoleUsageType = RoleUsageType 
  { "Region" :: NullOrUndefined.NullOrUndefined (RegionNameType)
  , "Resources" :: NullOrUndefined.NullOrUndefined (ArnListType)
  }
derive instance newtypeRoleUsageType :: Newtype RoleUsageType _
derive instance repGenericRoleUsageType :: Generic RoleUsageType _
instance showRoleUsageType :: Show RoleUsageType where
  show = genericShow
instance decodeRoleUsageType :: Decode RoleUsageType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRoleUsageType :: Encode RoleUsageType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RoleUsageType from required parameters
newRoleUsageType :: RoleUsageType
newRoleUsageType  = RoleUsageType { "Region": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing) }

-- | Constructs RoleUsageType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRoleUsageType' :: ( { "Region" :: NullOrUndefined.NullOrUndefined (RegionNameType) , "Resources" :: NullOrUndefined.NullOrUndefined (ArnListType) } -> {"Region" :: NullOrUndefined.NullOrUndefined (RegionNameType) , "Resources" :: NullOrUndefined.NullOrUndefined (ArnListType) } ) -> RoleUsageType
newRoleUsageType'  customize = (RoleUsageType <<< customize) { "Region": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing) }



newtype SAMLMetadataDocumentType = SAMLMetadataDocumentType String
derive instance newtypeSAMLMetadataDocumentType :: Newtype SAMLMetadataDocumentType _
derive instance repGenericSAMLMetadataDocumentType :: Generic SAMLMetadataDocumentType _
instance showSAMLMetadataDocumentType :: Show SAMLMetadataDocumentType where
  show = genericShow
instance decodeSAMLMetadataDocumentType :: Decode SAMLMetadataDocumentType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSAMLMetadataDocumentType :: Encode SAMLMetadataDocumentType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains the list of SAML providers for this account.</p>
newtype SAMLProviderListEntry = SAMLProviderListEntry 
  { "Arn" :: NullOrUndefined.NullOrUndefined (ArnType')
  , "ValidUntil" :: NullOrUndefined.NullOrUndefined (DateType')
  , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType')
  }
derive instance newtypeSAMLProviderListEntry :: Newtype SAMLProviderListEntry _
derive instance repGenericSAMLProviderListEntry :: Generic SAMLProviderListEntry _
instance showSAMLProviderListEntry :: Show SAMLProviderListEntry where
  show = genericShow
instance decodeSAMLProviderListEntry :: Decode SAMLProviderListEntry where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSAMLProviderListEntry :: Encode SAMLProviderListEntry where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SAMLProviderListEntry from required parameters
newSAMLProviderListEntry :: SAMLProviderListEntry
newSAMLProviderListEntry  = SAMLProviderListEntry { "Arn": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "ValidUntil": (NullOrUndefined Nothing) }

-- | Constructs SAMLProviderListEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSAMLProviderListEntry' :: ( { "Arn" :: NullOrUndefined.NullOrUndefined (ArnType') , "ValidUntil" :: NullOrUndefined.NullOrUndefined (DateType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') } -> {"Arn" :: NullOrUndefined.NullOrUndefined (ArnType') , "ValidUntil" :: NullOrUndefined.NullOrUndefined (DateType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') } ) -> SAMLProviderListEntry
newSAMLProviderListEntry'  customize = (SAMLProviderListEntry <<< customize) { "Arn": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "ValidUntil": (NullOrUndefined Nothing) }



newtype SAMLProviderListType = SAMLProviderListType (Array SAMLProviderListEntry)
derive instance newtypeSAMLProviderListType :: Newtype SAMLProviderListType _
derive instance repGenericSAMLProviderListType :: Generic SAMLProviderListType _
instance showSAMLProviderListType :: Show SAMLProviderListType where
  show = genericShow
instance decodeSAMLProviderListType :: Decode SAMLProviderListType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSAMLProviderListType :: Encode SAMLProviderListType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SAMLProviderNameType = SAMLProviderNameType String
derive instance newtypeSAMLProviderNameType :: Newtype SAMLProviderNameType _
derive instance repGenericSAMLProviderNameType :: Generic SAMLProviderNameType _
instance showSAMLProviderNameType :: Show SAMLProviderNameType where
  show = genericShow
instance decodeSAMLProviderNameType :: Decode SAMLProviderNameType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSAMLProviderNameType :: Encode SAMLProviderNameType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains information about an SSH public key.</p> <p>This data type is used as a response element in the <a>GetSSHPublicKey</a> and <a>UploadSSHPublicKey</a> actions. </p>
newtype SSHPublicKey = SSHPublicKey 
  { "UserName" :: (UserNameType')
  , "SSHPublicKeyId" :: (PublicKeyIdType')
  , "Fingerprint" :: (PublicKeyFingerprintType')
  , "SSHPublicKeyBody" :: (PublicKeyMaterialType')
  , "Status" :: (StatusType')
  , "UploadDate" :: NullOrUndefined.NullOrUndefined (DateType')
  }
derive instance newtypeSSHPublicKey :: Newtype SSHPublicKey _
derive instance repGenericSSHPublicKey :: Generic SSHPublicKey _
instance showSSHPublicKey :: Show SSHPublicKey where
  show = genericShow
instance decodeSSHPublicKey :: Decode SSHPublicKey where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSSHPublicKey :: Encode SSHPublicKey where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SSHPublicKey from required parameters
newSSHPublicKey :: PublicKeyFingerprintType' -> PublicKeyMaterialType' -> PublicKeyIdType' -> StatusType' -> UserNameType' -> SSHPublicKey
newSSHPublicKey _Fingerprint _SSHPublicKeyBody _SSHPublicKeyId _Status _UserName = SSHPublicKey { "Fingerprint": _Fingerprint, "SSHPublicKeyBody": _SSHPublicKeyBody, "SSHPublicKeyId": _SSHPublicKeyId, "Status": _Status, "UserName": _UserName, "UploadDate": (NullOrUndefined Nothing) }

-- | Constructs SSHPublicKey's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSSHPublicKey' :: PublicKeyFingerprintType' -> PublicKeyMaterialType' -> PublicKeyIdType' -> StatusType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') , "Fingerprint" :: (PublicKeyFingerprintType') , "SSHPublicKeyBody" :: (PublicKeyMaterialType') , "Status" :: (StatusType') , "UploadDate" :: NullOrUndefined.NullOrUndefined (DateType') } -> {"UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') , "Fingerprint" :: (PublicKeyFingerprintType') , "SSHPublicKeyBody" :: (PublicKeyMaterialType') , "Status" :: (StatusType') , "UploadDate" :: NullOrUndefined.NullOrUndefined (DateType') } ) -> SSHPublicKey
newSSHPublicKey' _Fingerprint _SSHPublicKeyBody _SSHPublicKeyId _Status _UserName customize = (SSHPublicKey <<< customize) { "Fingerprint": _Fingerprint, "SSHPublicKeyBody": _SSHPublicKeyBody, "SSHPublicKeyId": _SSHPublicKeyId, "Status": _Status, "UserName": _UserName, "UploadDate": (NullOrUndefined Nothing) }



newtype SSHPublicKeyListType = SSHPublicKeyListType (Array SSHPublicKeyMetadata)
derive instance newtypeSSHPublicKeyListType :: Newtype SSHPublicKeyListType _
derive instance repGenericSSHPublicKeyListType :: Generic SSHPublicKeyListType _
instance showSSHPublicKeyListType :: Show SSHPublicKeyListType where
  show = genericShow
instance decodeSSHPublicKeyListType :: Decode SSHPublicKeyListType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSSHPublicKeyListType :: Encode SSHPublicKeyListType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains information about an SSH public key, without the key's body or fingerprint.</p> <p>This data type is used as a response element in the <a>ListSSHPublicKeys</a> action.</p>
newtype SSHPublicKeyMetadata = SSHPublicKeyMetadata 
  { "UserName" :: (UserNameType')
  , "SSHPublicKeyId" :: (PublicKeyIdType')
  , "Status" :: (StatusType')
  , "UploadDate" :: (DateType')
  }
derive instance newtypeSSHPublicKeyMetadata :: Newtype SSHPublicKeyMetadata _
derive instance repGenericSSHPublicKeyMetadata :: Generic SSHPublicKeyMetadata _
instance showSSHPublicKeyMetadata :: Show SSHPublicKeyMetadata where
  show = genericShow
instance decodeSSHPublicKeyMetadata :: Decode SSHPublicKeyMetadata where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSSHPublicKeyMetadata :: Encode SSHPublicKeyMetadata where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SSHPublicKeyMetadata from required parameters
newSSHPublicKeyMetadata :: PublicKeyIdType' -> StatusType' -> DateType' -> UserNameType' -> SSHPublicKeyMetadata
newSSHPublicKeyMetadata _SSHPublicKeyId _Status _UploadDate _UserName = SSHPublicKeyMetadata { "SSHPublicKeyId": _SSHPublicKeyId, "Status": _Status, "UploadDate": _UploadDate, "UserName": _UserName }

-- | Constructs SSHPublicKeyMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSSHPublicKeyMetadata' :: PublicKeyIdType' -> StatusType' -> DateType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') , "Status" :: (StatusType') , "UploadDate" :: (DateType') } -> {"UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') , "Status" :: (StatusType') , "UploadDate" :: (DateType') } ) -> SSHPublicKeyMetadata
newSSHPublicKeyMetadata' _SSHPublicKeyId _Status _UploadDate _UserName customize = (SSHPublicKeyMetadata <<< customize) { "SSHPublicKeyId": _SSHPublicKeyId, "Status": _Status, "UploadDate": _UploadDate, "UserName": _UserName }



-- | <p>Contains information about a server certificate.</p> <p> This data type is used as a response element in the <a>GetServerCertificate</a> action. </p>
newtype ServerCertificate = ServerCertificate 
  { "ServerCertificateMetadata" :: (ServerCertificateMetadata)
  , "CertificateBody" :: (CertificateBodyType')
  , "CertificateChain" :: NullOrUndefined.NullOrUndefined (CertificateChainType')
  }
derive instance newtypeServerCertificate :: Newtype ServerCertificate _
derive instance repGenericServerCertificate :: Generic ServerCertificate _
instance showServerCertificate :: Show ServerCertificate where
  show = genericShow
instance decodeServerCertificate :: Decode ServerCertificate where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServerCertificate :: Encode ServerCertificate where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServerCertificate from required parameters
newServerCertificate :: CertificateBodyType' -> ServerCertificateMetadata -> ServerCertificate
newServerCertificate _CertificateBody _ServerCertificateMetadata = ServerCertificate { "CertificateBody": _CertificateBody, "ServerCertificateMetadata": _ServerCertificateMetadata, "CertificateChain": (NullOrUndefined Nothing) }

-- | Constructs ServerCertificate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServerCertificate' :: CertificateBodyType' -> ServerCertificateMetadata -> ( { "ServerCertificateMetadata" :: (ServerCertificateMetadata) , "CertificateBody" :: (CertificateBodyType') , "CertificateChain" :: NullOrUndefined.NullOrUndefined (CertificateChainType') } -> {"ServerCertificateMetadata" :: (ServerCertificateMetadata) , "CertificateBody" :: (CertificateBodyType') , "CertificateChain" :: NullOrUndefined.NullOrUndefined (CertificateChainType') } ) -> ServerCertificate
newServerCertificate' _CertificateBody _ServerCertificateMetadata customize = (ServerCertificate <<< customize) { "CertificateBody": _CertificateBody, "ServerCertificateMetadata": _ServerCertificateMetadata, "CertificateChain": (NullOrUndefined Nothing) }



-- | <p>Contains information about a server certificate without its certificate body, certificate chain, and private key.</p> <p> This data type is used as a response element in the <a>UploadServerCertificate</a> and <a>ListServerCertificates</a> actions. </p>
newtype ServerCertificateMetadata = ServerCertificateMetadata 
  { "Path" :: (PathType')
  , "ServerCertificateName" :: (ServerCertificateNameType')
  , "ServerCertificateId" :: (IdType')
  , "Arn" :: (ArnType')
  , "UploadDate" :: NullOrUndefined.NullOrUndefined (DateType')
  , "Expiration" :: NullOrUndefined.NullOrUndefined (DateType')
  }
derive instance newtypeServerCertificateMetadata :: Newtype ServerCertificateMetadata _
derive instance repGenericServerCertificateMetadata :: Generic ServerCertificateMetadata _
instance showServerCertificateMetadata :: Show ServerCertificateMetadata where
  show = genericShow
instance decodeServerCertificateMetadata :: Decode ServerCertificateMetadata where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServerCertificateMetadata :: Encode ServerCertificateMetadata where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServerCertificateMetadata from required parameters
newServerCertificateMetadata :: ArnType' -> PathType' -> IdType' -> ServerCertificateNameType' -> ServerCertificateMetadata
newServerCertificateMetadata _Arn _Path _ServerCertificateId _ServerCertificateName = ServerCertificateMetadata { "Arn": _Arn, "Path": _Path, "ServerCertificateId": _ServerCertificateId, "ServerCertificateName": _ServerCertificateName, "Expiration": (NullOrUndefined Nothing), "UploadDate": (NullOrUndefined Nothing) }

-- | Constructs ServerCertificateMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServerCertificateMetadata' :: ArnType' -> PathType' -> IdType' -> ServerCertificateNameType' -> ( { "Path" :: (PathType') , "ServerCertificateName" :: (ServerCertificateNameType') , "ServerCertificateId" :: (IdType') , "Arn" :: (ArnType') , "UploadDate" :: NullOrUndefined.NullOrUndefined (DateType') , "Expiration" :: NullOrUndefined.NullOrUndefined (DateType') } -> {"Path" :: (PathType') , "ServerCertificateName" :: (ServerCertificateNameType') , "ServerCertificateId" :: (IdType') , "Arn" :: (ArnType') , "UploadDate" :: NullOrUndefined.NullOrUndefined (DateType') , "Expiration" :: NullOrUndefined.NullOrUndefined (DateType') } ) -> ServerCertificateMetadata
newServerCertificateMetadata' _Arn _Path _ServerCertificateId _ServerCertificateName customize = (ServerCertificateMetadata <<< customize) { "Arn": _Arn, "Path": _Path, "ServerCertificateId": _ServerCertificateId, "ServerCertificateName": _ServerCertificateName, "Expiration": (NullOrUndefined Nothing), "UploadDate": (NullOrUndefined Nothing) }



-- | <p>The request processing has failed because of an unknown error, exception or failure.</p>
newtype ServiceFailureException = ServiceFailureException 
  { "message" :: NullOrUndefined.NullOrUndefined (ServiceFailureExceptionMessage')
  }
derive instance newtypeServiceFailureException :: Newtype ServiceFailureException _
derive instance repGenericServiceFailureException :: Generic ServiceFailureException _
instance showServiceFailureException :: Show ServiceFailureException where
  show = genericShow
instance decodeServiceFailureException :: Decode ServiceFailureException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceFailureException :: Encode ServiceFailureException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServiceFailureException from required parameters
newServiceFailureException :: ServiceFailureException
newServiceFailureException  = ServiceFailureException { "message": (NullOrUndefined Nothing) }

-- | Constructs ServiceFailureException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceFailureException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ServiceFailureExceptionMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (ServiceFailureExceptionMessage') } ) -> ServiceFailureException
newServiceFailureException'  customize = (ServiceFailureException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The specified service does not support service-specific credentials.</p>
newtype ServiceNotSupportedException = ServiceNotSupportedException 
  { "message" :: NullOrUndefined.NullOrUndefined (ServiceNotSupportedMessage')
  }
derive instance newtypeServiceNotSupportedException :: Newtype ServiceNotSupportedException _
derive instance repGenericServiceNotSupportedException :: Generic ServiceNotSupportedException _
instance showServiceNotSupportedException :: Show ServiceNotSupportedException where
  show = genericShow
instance decodeServiceNotSupportedException :: Decode ServiceNotSupportedException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceNotSupportedException :: Encode ServiceNotSupportedException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServiceNotSupportedException from required parameters
newServiceNotSupportedException :: ServiceNotSupportedException
newServiceNotSupportedException  = ServiceNotSupportedException { "message": (NullOrUndefined Nothing) }

-- | Constructs ServiceNotSupportedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceNotSupportedException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ServiceNotSupportedMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (ServiceNotSupportedMessage') } ) -> ServiceNotSupportedException
newServiceNotSupportedException'  customize = (ServiceNotSupportedException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Contains the details of a service specific credential.</p>
newtype ServiceSpecificCredential = ServiceSpecificCredential 
  { "CreateDate" :: (DateType')
  , "ServiceName" :: (ServiceName')
  , "ServiceUserName" :: (ServiceUserName')
  , "ServicePassword" :: (ServicePassword')
  , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId')
  , "UserName" :: (UserNameType')
  , "Status" :: (StatusType')
  }
derive instance newtypeServiceSpecificCredential :: Newtype ServiceSpecificCredential _
derive instance repGenericServiceSpecificCredential :: Generic ServiceSpecificCredential _
instance showServiceSpecificCredential :: Show ServiceSpecificCredential where
  show = genericShow
instance decodeServiceSpecificCredential :: Decode ServiceSpecificCredential where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceSpecificCredential :: Encode ServiceSpecificCredential where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServiceSpecificCredential from required parameters
newServiceSpecificCredential :: DateType' -> ServiceName' -> ServicePassword' -> ServiceSpecificCredentialId' -> ServiceUserName' -> StatusType' -> UserNameType' -> ServiceSpecificCredential
newServiceSpecificCredential _CreateDate _ServiceName _ServicePassword _ServiceSpecificCredentialId _ServiceUserName _Status _UserName = ServiceSpecificCredential { "CreateDate": _CreateDate, "ServiceName": _ServiceName, "ServicePassword": _ServicePassword, "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "ServiceUserName": _ServiceUserName, "Status": _Status, "UserName": _UserName }

-- | Constructs ServiceSpecificCredential's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceSpecificCredential' :: DateType' -> ServiceName' -> ServicePassword' -> ServiceSpecificCredentialId' -> ServiceUserName' -> StatusType' -> UserNameType' -> ( { "CreateDate" :: (DateType') , "ServiceName" :: (ServiceName') , "ServiceUserName" :: (ServiceUserName') , "ServicePassword" :: (ServicePassword') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') , "UserName" :: (UserNameType') , "Status" :: (StatusType') } -> {"CreateDate" :: (DateType') , "ServiceName" :: (ServiceName') , "ServiceUserName" :: (ServiceUserName') , "ServicePassword" :: (ServicePassword') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') , "UserName" :: (UserNameType') , "Status" :: (StatusType') } ) -> ServiceSpecificCredential
newServiceSpecificCredential' _CreateDate _ServiceName _ServicePassword _ServiceSpecificCredentialId _ServiceUserName _Status _UserName customize = (ServiceSpecificCredential <<< customize) { "CreateDate": _CreateDate, "ServiceName": _ServiceName, "ServicePassword": _ServicePassword, "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "ServiceUserName": _ServiceUserName, "Status": _Status, "UserName": _UserName }



-- | <p>Contains additional details about a service-specific credential.</p>
newtype ServiceSpecificCredentialMetadata = ServiceSpecificCredentialMetadata 
  { "UserName" :: (UserNameType')
  , "Status" :: (StatusType')
  , "ServiceUserName" :: (ServiceUserName')
  , "CreateDate" :: (DateType')
  , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId')
  , "ServiceName" :: (ServiceName')
  }
derive instance newtypeServiceSpecificCredentialMetadata :: Newtype ServiceSpecificCredentialMetadata _
derive instance repGenericServiceSpecificCredentialMetadata :: Generic ServiceSpecificCredentialMetadata _
instance showServiceSpecificCredentialMetadata :: Show ServiceSpecificCredentialMetadata where
  show = genericShow
instance decodeServiceSpecificCredentialMetadata :: Decode ServiceSpecificCredentialMetadata where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceSpecificCredentialMetadata :: Encode ServiceSpecificCredentialMetadata where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServiceSpecificCredentialMetadata from required parameters
newServiceSpecificCredentialMetadata :: DateType' -> ServiceName' -> ServiceSpecificCredentialId' -> ServiceUserName' -> StatusType' -> UserNameType' -> ServiceSpecificCredentialMetadata
newServiceSpecificCredentialMetadata _CreateDate _ServiceName _ServiceSpecificCredentialId _ServiceUserName _Status _UserName = ServiceSpecificCredentialMetadata { "CreateDate": _CreateDate, "ServiceName": _ServiceName, "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "ServiceUserName": _ServiceUserName, "Status": _Status, "UserName": _UserName }

-- | Constructs ServiceSpecificCredentialMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceSpecificCredentialMetadata' :: DateType' -> ServiceName' -> ServiceSpecificCredentialId' -> ServiceUserName' -> StatusType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "Status" :: (StatusType') , "ServiceUserName" :: (ServiceUserName') , "CreateDate" :: (DateType') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') , "ServiceName" :: (ServiceName') } -> {"UserName" :: (UserNameType') , "Status" :: (StatusType') , "ServiceUserName" :: (ServiceUserName') , "CreateDate" :: (DateType') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') , "ServiceName" :: (ServiceName') } ) -> ServiceSpecificCredentialMetadata
newServiceSpecificCredentialMetadata' _CreateDate _ServiceName _ServiceSpecificCredentialId _ServiceUserName _Status _UserName customize = (ServiceSpecificCredentialMetadata <<< customize) { "CreateDate": _CreateDate, "ServiceName": _ServiceName, "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "ServiceUserName": _ServiceUserName, "Status": _Status, "UserName": _UserName }



newtype ServiceSpecificCredentialsListType = ServiceSpecificCredentialsListType (Array ServiceSpecificCredentialMetadata)
derive instance newtypeServiceSpecificCredentialsListType :: Newtype ServiceSpecificCredentialsListType _
derive instance repGenericServiceSpecificCredentialsListType :: Generic ServiceSpecificCredentialsListType _
instance showServiceSpecificCredentialsListType :: Show ServiceSpecificCredentialsListType where
  show = genericShow
instance decodeServiceSpecificCredentialsListType :: Decode ServiceSpecificCredentialsListType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceSpecificCredentialsListType :: Encode ServiceSpecificCredentialsListType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SetDefaultPolicyVersionRequest = SetDefaultPolicyVersionRequest 
  { "PolicyArn" :: (ArnType')
  , "VersionId" :: (PolicyVersionIdType')
  }
derive instance newtypeSetDefaultPolicyVersionRequest :: Newtype SetDefaultPolicyVersionRequest _
derive instance repGenericSetDefaultPolicyVersionRequest :: Generic SetDefaultPolicyVersionRequest _
instance showSetDefaultPolicyVersionRequest :: Show SetDefaultPolicyVersionRequest where
  show = genericShow
instance decodeSetDefaultPolicyVersionRequest :: Decode SetDefaultPolicyVersionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSetDefaultPolicyVersionRequest :: Encode SetDefaultPolicyVersionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SetDefaultPolicyVersionRequest from required parameters
newSetDefaultPolicyVersionRequest :: ArnType' -> PolicyVersionIdType' -> SetDefaultPolicyVersionRequest
newSetDefaultPolicyVersionRequest _PolicyArn _VersionId = SetDefaultPolicyVersionRequest { "PolicyArn": _PolicyArn, "VersionId": _VersionId }

-- | Constructs SetDefaultPolicyVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetDefaultPolicyVersionRequest' :: ArnType' -> PolicyVersionIdType' -> ( { "PolicyArn" :: (ArnType') , "VersionId" :: (PolicyVersionIdType') } -> {"PolicyArn" :: (ArnType') , "VersionId" :: (PolicyVersionIdType') } ) -> SetDefaultPolicyVersionRequest
newSetDefaultPolicyVersionRequest' _PolicyArn _VersionId customize = (SetDefaultPolicyVersionRequest <<< customize) { "PolicyArn": _PolicyArn, "VersionId": _VersionId }



-- | <p>Contains information about an X.509 signing certificate.</p> <p>This data type is used as a response element in the <a>UploadSigningCertificate</a> and <a>ListSigningCertificates</a> actions. </p>
newtype SigningCertificate = SigningCertificate 
  { "UserName" :: (UserNameType')
  , "CertificateId" :: (CertificateIdType')
  , "CertificateBody" :: (CertificateBodyType')
  , "Status" :: (StatusType')
  , "UploadDate" :: NullOrUndefined.NullOrUndefined (DateType')
  }
derive instance newtypeSigningCertificate :: Newtype SigningCertificate _
derive instance repGenericSigningCertificate :: Generic SigningCertificate _
instance showSigningCertificate :: Show SigningCertificate where
  show = genericShow
instance decodeSigningCertificate :: Decode SigningCertificate where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSigningCertificate :: Encode SigningCertificate where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SigningCertificate from required parameters
newSigningCertificate :: CertificateBodyType' -> CertificateIdType' -> StatusType' -> UserNameType' -> SigningCertificate
newSigningCertificate _CertificateBody _CertificateId _Status _UserName = SigningCertificate { "CertificateBody": _CertificateBody, "CertificateId": _CertificateId, "Status": _Status, "UserName": _UserName, "UploadDate": (NullOrUndefined Nothing) }

-- | Constructs SigningCertificate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSigningCertificate' :: CertificateBodyType' -> CertificateIdType' -> StatusType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "CertificateId" :: (CertificateIdType') , "CertificateBody" :: (CertificateBodyType') , "Status" :: (StatusType') , "UploadDate" :: NullOrUndefined.NullOrUndefined (DateType') } -> {"UserName" :: (UserNameType') , "CertificateId" :: (CertificateIdType') , "CertificateBody" :: (CertificateBodyType') , "Status" :: (StatusType') , "UploadDate" :: NullOrUndefined.NullOrUndefined (DateType') } ) -> SigningCertificate
newSigningCertificate' _CertificateBody _CertificateId _Status _UserName customize = (SigningCertificate <<< customize) { "CertificateBody": _CertificateBody, "CertificateId": _CertificateId, "Status": _Status, "UserName": _UserName, "UploadDate": (NullOrUndefined Nothing) }



newtype SimulateCustomPolicyRequest = SimulateCustomPolicyRequest 
  { "PolicyInputList" :: (SimulationPolicyListType)
  , "ActionNames" :: (ActionNameListType)
  , "ResourceArns" :: NullOrUndefined.NullOrUndefined (ResourceNameListType)
  , "ResourcePolicy" :: NullOrUndefined.NullOrUndefined (PolicyDocumentType')
  , "ResourceOwner" :: NullOrUndefined.NullOrUndefined (ResourceNameType)
  , "CallerArn" :: NullOrUndefined.NullOrUndefined (ResourceNameType)
  , "ContextEntries" :: NullOrUndefined.NullOrUndefined (ContextEntryListType)
  , "ResourceHandlingOption" :: NullOrUndefined.NullOrUndefined (ResourceHandlingOptionType)
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeSimulateCustomPolicyRequest :: Newtype SimulateCustomPolicyRequest _
derive instance repGenericSimulateCustomPolicyRequest :: Generic SimulateCustomPolicyRequest _
instance showSimulateCustomPolicyRequest :: Show SimulateCustomPolicyRequest where
  show = genericShow
instance decodeSimulateCustomPolicyRequest :: Decode SimulateCustomPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSimulateCustomPolicyRequest :: Encode SimulateCustomPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SimulateCustomPolicyRequest from required parameters
newSimulateCustomPolicyRequest :: ActionNameListType -> SimulationPolicyListType -> SimulateCustomPolicyRequest
newSimulateCustomPolicyRequest _ActionNames _PolicyInputList = SimulateCustomPolicyRequest { "ActionNames": _ActionNames, "PolicyInputList": _PolicyInputList, "CallerArn": (NullOrUndefined Nothing), "ContextEntries": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "ResourceArns": (NullOrUndefined Nothing), "ResourceHandlingOption": (NullOrUndefined Nothing), "ResourceOwner": (NullOrUndefined Nothing), "ResourcePolicy": (NullOrUndefined Nothing) }

-- | Constructs SimulateCustomPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSimulateCustomPolicyRequest' :: ActionNameListType -> SimulationPolicyListType -> ( { "PolicyInputList" :: (SimulationPolicyListType) , "ActionNames" :: (ActionNameListType) , "ResourceArns" :: NullOrUndefined.NullOrUndefined (ResourceNameListType) , "ResourcePolicy" :: NullOrUndefined.NullOrUndefined (PolicyDocumentType') , "ResourceOwner" :: NullOrUndefined.NullOrUndefined (ResourceNameType) , "CallerArn" :: NullOrUndefined.NullOrUndefined (ResourceNameType) , "ContextEntries" :: NullOrUndefined.NullOrUndefined (ContextEntryListType) , "ResourceHandlingOption" :: NullOrUndefined.NullOrUndefined (ResourceHandlingOptionType) , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"PolicyInputList" :: (SimulationPolicyListType) , "ActionNames" :: (ActionNameListType) , "ResourceArns" :: NullOrUndefined.NullOrUndefined (ResourceNameListType) , "ResourcePolicy" :: NullOrUndefined.NullOrUndefined (PolicyDocumentType') , "ResourceOwner" :: NullOrUndefined.NullOrUndefined (ResourceNameType) , "CallerArn" :: NullOrUndefined.NullOrUndefined (ResourceNameType) , "ContextEntries" :: NullOrUndefined.NullOrUndefined (ContextEntryListType) , "ResourceHandlingOption" :: NullOrUndefined.NullOrUndefined (ResourceHandlingOptionType) , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> SimulateCustomPolicyRequest
newSimulateCustomPolicyRequest' _ActionNames _PolicyInputList customize = (SimulateCustomPolicyRequest <<< customize) { "ActionNames": _ActionNames, "PolicyInputList": _PolicyInputList, "CallerArn": (NullOrUndefined Nothing), "ContextEntries": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "ResourceArns": (NullOrUndefined Nothing), "ResourceHandlingOption": (NullOrUndefined Nothing), "ResourceOwner": (NullOrUndefined Nothing), "ResourcePolicy": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>SimulatePrincipalPolicy</a> or <a>SimulateCustomPolicy</a> request.</p>
newtype SimulatePolicyResponse = SimulatePolicyResponse 
  { "EvaluationResults" :: NullOrUndefined.NullOrUndefined (EvaluationResultsListType)
  , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeSimulatePolicyResponse :: Newtype SimulatePolicyResponse _
derive instance repGenericSimulatePolicyResponse :: Generic SimulatePolicyResponse _
instance showSimulatePolicyResponse :: Show SimulatePolicyResponse where
  show = genericShow
instance decodeSimulatePolicyResponse :: Decode SimulatePolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSimulatePolicyResponse :: Encode SimulatePolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SimulatePolicyResponse from required parameters
newSimulatePolicyResponse :: SimulatePolicyResponse
newSimulatePolicyResponse  = SimulatePolicyResponse { "EvaluationResults": (NullOrUndefined Nothing), "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs SimulatePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSimulatePolicyResponse' :: ( { "EvaluationResults" :: NullOrUndefined.NullOrUndefined (EvaluationResultsListType) , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"EvaluationResults" :: NullOrUndefined.NullOrUndefined (EvaluationResultsListType) , "IsTruncated" :: NullOrUndefined.NullOrUndefined (BooleanType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> SimulatePolicyResponse
newSimulatePolicyResponse'  customize = (SimulatePolicyResponse <<< customize) { "EvaluationResults": (NullOrUndefined Nothing), "IsTruncated": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype SimulatePrincipalPolicyRequest = SimulatePrincipalPolicyRequest 
  { "PolicySourceArn" :: (ArnType')
  , "PolicyInputList" :: NullOrUndefined.NullOrUndefined (SimulationPolicyListType)
  , "ActionNames" :: (ActionNameListType)
  , "ResourceArns" :: NullOrUndefined.NullOrUndefined (ResourceNameListType)
  , "ResourcePolicy" :: NullOrUndefined.NullOrUndefined (PolicyDocumentType')
  , "ResourceOwner" :: NullOrUndefined.NullOrUndefined (ResourceNameType)
  , "CallerArn" :: NullOrUndefined.NullOrUndefined (ResourceNameType)
  , "ContextEntries" :: NullOrUndefined.NullOrUndefined (ContextEntryListType)
  , "ResourceHandlingOption" :: NullOrUndefined.NullOrUndefined (ResourceHandlingOptionType)
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType')
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType')
  }
derive instance newtypeSimulatePrincipalPolicyRequest :: Newtype SimulatePrincipalPolicyRequest _
derive instance repGenericSimulatePrincipalPolicyRequest :: Generic SimulatePrincipalPolicyRequest _
instance showSimulatePrincipalPolicyRequest :: Show SimulatePrincipalPolicyRequest where
  show = genericShow
instance decodeSimulatePrincipalPolicyRequest :: Decode SimulatePrincipalPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSimulatePrincipalPolicyRequest :: Encode SimulatePrincipalPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SimulatePrincipalPolicyRequest from required parameters
newSimulatePrincipalPolicyRequest :: ActionNameListType -> ArnType' -> SimulatePrincipalPolicyRequest
newSimulatePrincipalPolicyRequest _ActionNames _PolicySourceArn = SimulatePrincipalPolicyRequest { "ActionNames": _ActionNames, "PolicySourceArn": _PolicySourceArn, "CallerArn": (NullOrUndefined Nothing), "ContextEntries": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PolicyInputList": (NullOrUndefined Nothing), "ResourceArns": (NullOrUndefined Nothing), "ResourceHandlingOption": (NullOrUndefined Nothing), "ResourceOwner": (NullOrUndefined Nothing), "ResourcePolicy": (NullOrUndefined Nothing) }

-- | Constructs SimulatePrincipalPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSimulatePrincipalPolicyRequest' :: ActionNameListType -> ArnType' -> ( { "PolicySourceArn" :: (ArnType') , "PolicyInputList" :: NullOrUndefined.NullOrUndefined (SimulationPolicyListType) , "ActionNames" :: (ActionNameListType) , "ResourceArns" :: NullOrUndefined.NullOrUndefined (ResourceNameListType) , "ResourcePolicy" :: NullOrUndefined.NullOrUndefined (PolicyDocumentType') , "ResourceOwner" :: NullOrUndefined.NullOrUndefined (ResourceNameType) , "CallerArn" :: NullOrUndefined.NullOrUndefined (ResourceNameType) , "ContextEntries" :: NullOrUndefined.NullOrUndefined (ContextEntryListType) , "ResourceHandlingOption" :: NullOrUndefined.NullOrUndefined (ResourceHandlingOptionType) , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } -> {"PolicySourceArn" :: (ArnType') , "PolicyInputList" :: NullOrUndefined.NullOrUndefined (SimulationPolicyListType) , "ActionNames" :: (ActionNameListType) , "ResourceArns" :: NullOrUndefined.NullOrUndefined (ResourceNameListType) , "ResourcePolicy" :: NullOrUndefined.NullOrUndefined (PolicyDocumentType') , "ResourceOwner" :: NullOrUndefined.NullOrUndefined (ResourceNameType) , "CallerArn" :: NullOrUndefined.NullOrUndefined (ResourceNameType) , "ContextEntries" :: NullOrUndefined.NullOrUndefined (ContextEntryListType) , "ResourceHandlingOption" :: NullOrUndefined.NullOrUndefined (ResourceHandlingOptionType) , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItemsType') , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType') } ) -> SimulatePrincipalPolicyRequest
newSimulatePrincipalPolicyRequest' _ActionNames _PolicySourceArn customize = (SimulatePrincipalPolicyRequest <<< customize) { "ActionNames": _ActionNames, "PolicySourceArn": _PolicySourceArn, "CallerArn": (NullOrUndefined Nothing), "ContextEntries": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "PolicyInputList": (NullOrUndefined Nothing), "ResourceArns": (NullOrUndefined Nothing), "ResourceHandlingOption": (NullOrUndefined Nothing), "ResourceOwner": (NullOrUndefined Nothing), "ResourcePolicy": (NullOrUndefined Nothing) }



newtype SimulationPolicyListType = SimulationPolicyListType (Array PolicyDocumentType')
derive instance newtypeSimulationPolicyListType :: Newtype SimulationPolicyListType _
derive instance repGenericSimulationPolicyListType :: Generic SimulationPolicyListType _
instance showSimulationPolicyListType :: Show SimulationPolicyListType where
  show = genericShow
instance decodeSimulationPolicyListType :: Decode SimulationPolicyListType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSimulationPolicyListType :: Encode SimulationPolicyListType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains a reference to a <code>Statement</code> element in a policy document that determines the result of the simulation.</p> <p>This data type is used by the <code>MatchedStatements</code> member of the <code> <a>EvaluationResult</a> </code> type.</p>
newtype Statement = Statement 
  { "SourcePolicyId" :: NullOrUndefined.NullOrUndefined (PolicyIdentifierType)
  , "SourcePolicyType" :: NullOrUndefined.NullOrUndefined (PolicySourceType)
  , "StartPosition" :: NullOrUndefined.NullOrUndefined (Position)
  , "EndPosition" :: NullOrUndefined.NullOrUndefined (Position)
  }
derive instance newtypeStatement :: Newtype Statement _
derive instance repGenericStatement :: Generic Statement _
instance showStatement :: Show Statement where
  show = genericShow
instance decodeStatement :: Decode Statement where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStatement :: Encode Statement where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Statement from required parameters
newStatement :: Statement
newStatement  = Statement { "EndPosition": (NullOrUndefined Nothing), "SourcePolicyId": (NullOrUndefined Nothing), "SourcePolicyType": (NullOrUndefined Nothing), "StartPosition": (NullOrUndefined Nothing) }

-- | Constructs Statement's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStatement' :: ( { "SourcePolicyId" :: NullOrUndefined.NullOrUndefined (PolicyIdentifierType) , "SourcePolicyType" :: NullOrUndefined.NullOrUndefined (PolicySourceType) , "StartPosition" :: NullOrUndefined.NullOrUndefined (Position) , "EndPosition" :: NullOrUndefined.NullOrUndefined (Position) } -> {"SourcePolicyId" :: NullOrUndefined.NullOrUndefined (PolicyIdentifierType) , "SourcePolicyType" :: NullOrUndefined.NullOrUndefined (PolicySourceType) , "StartPosition" :: NullOrUndefined.NullOrUndefined (Position) , "EndPosition" :: NullOrUndefined.NullOrUndefined (Position) } ) -> Statement
newStatement'  customize = (Statement <<< customize) { "EndPosition": (NullOrUndefined Nothing), "SourcePolicyId": (NullOrUndefined Nothing), "SourcePolicyType": (NullOrUndefined Nothing), "StartPosition": (NullOrUndefined Nothing) }



newtype StatementListType = StatementListType (Array Statement)
derive instance newtypeStatementListType :: Newtype StatementListType _
derive instance repGenericStatementListType :: Generic StatementListType _
instance showStatementListType :: Show StatementListType where
  show = genericShow
instance decodeStatementListType :: Decode StatementListType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStatementListType :: Encode StatementListType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The request was rejected because only the service that depends on the service-linked role can modify or delete the role on your behalf. The error message includes the name of the service that depends on this service-linked role. You must request the change through that service.</p>
newtype UnmodifiableEntityException = UnmodifiableEntityException 
  { "message" :: NullOrUndefined.NullOrUndefined (UnmodifiableEntityMessage')
  }
derive instance newtypeUnmodifiableEntityException :: Newtype UnmodifiableEntityException _
derive instance repGenericUnmodifiableEntityException :: Generic UnmodifiableEntityException _
instance showUnmodifiableEntityException :: Show UnmodifiableEntityException where
  show = genericShow
instance decodeUnmodifiableEntityException :: Decode UnmodifiableEntityException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnmodifiableEntityException :: Encode UnmodifiableEntityException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UnmodifiableEntityException from required parameters
newUnmodifiableEntityException :: UnmodifiableEntityException
newUnmodifiableEntityException  = UnmodifiableEntityException { "message": (NullOrUndefined Nothing) }

-- | Constructs UnmodifiableEntityException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnmodifiableEntityException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (UnmodifiableEntityMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (UnmodifiableEntityMessage') } ) -> UnmodifiableEntityException
newUnmodifiableEntityException'  customize = (UnmodifiableEntityException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the public key encoding format is unsupported or unrecognized.</p>
newtype UnrecognizedPublicKeyEncodingException = UnrecognizedPublicKeyEncodingException 
  { "message" :: NullOrUndefined.NullOrUndefined (UnrecognizedPublicKeyEncodingMessage')
  }
derive instance newtypeUnrecognizedPublicKeyEncodingException :: Newtype UnrecognizedPublicKeyEncodingException _
derive instance repGenericUnrecognizedPublicKeyEncodingException :: Generic UnrecognizedPublicKeyEncodingException _
instance showUnrecognizedPublicKeyEncodingException :: Show UnrecognizedPublicKeyEncodingException where
  show = genericShow
instance decodeUnrecognizedPublicKeyEncodingException :: Decode UnrecognizedPublicKeyEncodingException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnrecognizedPublicKeyEncodingException :: Encode UnrecognizedPublicKeyEncodingException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UnrecognizedPublicKeyEncodingException from required parameters
newUnrecognizedPublicKeyEncodingException :: UnrecognizedPublicKeyEncodingException
newUnrecognizedPublicKeyEncodingException  = UnrecognizedPublicKeyEncodingException { "message": (NullOrUndefined Nothing) }

-- | Constructs UnrecognizedPublicKeyEncodingException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnrecognizedPublicKeyEncodingException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (UnrecognizedPublicKeyEncodingMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (UnrecognizedPublicKeyEncodingMessage') } ) -> UnrecognizedPublicKeyEncodingException
newUnrecognizedPublicKeyEncodingException'  customize = (UnrecognizedPublicKeyEncodingException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype UpdateAccessKeyRequest = UpdateAccessKeyRequest 
  { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType')
  , "AccessKeyId" :: (AccessKeyIdType')
  , "Status" :: (StatusType')
  }
derive instance newtypeUpdateAccessKeyRequest :: Newtype UpdateAccessKeyRequest _
derive instance repGenericUpdateAccessKeyRequest :: Generic UpdateAccessKeyRequest _
instance showUpdateAccessKeyRequest :: Show UpdateAccessKeyRequest where
  show = genericShow
instance decodeUpdateAccessKeyRequest :: Decode UpdateAccessKeyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateAccessKeyRequest :: Encode UpdateAccessKeyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateAccessKeyRequest from required parameters
newUpdateAccessKeyRequest :: AccessKeyIdType' -> StatusType' -> UpdateAccessKeyRequest
newUpdateAccessKeyRequest _AccessKeyId _Status = UpdateAccessKeyRequest { "AccessKeyId": _AccessKeyId, "Status": _Status, "UserName": (NullOrUndefined Nothing) }

-- | Constructs UpdateAccessKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateAccessKeyRequest' :: AccessKeyIdType' -> StatusType' -> ( { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') , "AccessKeyId" :: (AccessKeyIdType') , "Status" :: (StatusType') } -> {"UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') , "AccessKeyId" :: (AccessKeyIdType') , "Status" :: (StatusType') } ) -> UpdateAccessKeyRequest
newUpdateAccessKeyRequest' _AccessKeyId _Status customize = (UpdateAccessKeyRequest <<< customize) { "AccessKeyId": _AccessKeyId, "Status": _Status, "UserName": (NullOrUndefined Nothing) }



newtype UpdateAccountPasswordPolicyRequest = UpdateAccountPasswordPolicyRequest 
  { "MinimumPasswordLength" :: NullOrUndefined.NullOrUndefined (MinimumPasswordLengthType')
  , "RequireSymbols" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "RequireNumbers" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "RequireUppercaseCharacters" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "RequireLowercaseCharacters" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "AllowUsersToChangePassword" :: NullOrUndefined.NullOrUndefined (BooleanType')
  , "MaxPasswordAge" :: NullOrUndefined.NullOrUndefined (MaxPasswordAgeType')
  , "PasswordReusePrevention" :: NullOrUndefined.NullOrUndefined (PasswordReusePreventionType')
  , "HardExpiry" :: NullOrUndefined.NullOrUndefined (BooleanObjectType')
  }
derive instance newtypeUpdateAccountPasswordPolicyRequest :: Newtype UpdateAccountPasswordPolicyRequest _
derive instance repGenericUpdateAccountPasswordPolicyRequest :: Generic UpdateAccountPasswordPolicyRequest _
instance showUpdateAccountPasswordPolicyRequest :: Show UpdateAccountPasswordPolicyRequest where
  show = genericShow
instance decodeUpdateAccountPasswordPolicyRequest :: Decode UpdateAccountPasswordPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateAccountPasswordPolicyRequest :: Encode UpdateAccountPasswordPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateAccountPasswordPolicyRequest from required parameters
newUpdateAccountPasswordPolicyRequest :: UpdateAccountPasswordPolicyRequest
newUpdateAccountPasswordPolicyRequest  = UpdateAccountPasswordPolicyRequest { "AllowUsersToChangePassword": (NullOrUndefined Nothing), "HardExpiry": (NullOrUndefined Nothing), "MaxPasswordAge": (NullOrUndefined Nothing), "MinimumPasswordLength": (NullOrUndefined Nothing), "PasswordReusePrevention": (NullOrUndefined Nothing), "RequireLowercaseCharacters": (NullOrUndefined Nothing), "RequireNumbers": (NullOrUndefined Nothing), "RequireSymbols": (NullOrUndefined Nothing), "RequireUppercaseCharacters": (NullOrUndefined Nothing) }

-- | Constructs UpdateAccountPasswordPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateAccountPasswordPolicyRequest' :: ( { "MinimumPasswordLength" :: NullOrUndefined.NullOrUndefined (MinimumPasswordLengthType') , "RequireSymbols" :: NullOrUndefined.NullOrUndefined (BooleanType') , "RequireNumbers" :: NullOrUndefined.NullOrUndefined (BooleanType') , "RequireUppercaseCharacters" :: NullOrUndefined.NullOrUndefined (BooleanType') , "RequireLowercaseCharacters" :: NullOrUndefined.NullOrUndefined (BooleanType') , "AllowUsersToChangePassword" :: NullOrUndefined.NullOrUndefined (BooleanType') , "MaxPasswordAge" :: NullOrUndefined.NullOrUndefined (MaxPasswordAgeType') , "PasswordReusePrevention" :: NullOrUndefined.NullOrUndefined (PasswordReusePreventionType') , "HardExpiry" :: NullOrUndefined.NullOrUndefined (BooleanObjectType') } -> {"MinimumPasswordLength" :: NullOrUndefined.NullOrUndefined (MinimumPasswordLengthType') , "RequireSymbols" :: NullOrUndefined.NullOrUndefined (BooleanType') , "RequireNumbers" :: NullOrUndefined.NullOrUndefined (BooleanType') , "RequireUppercaseCharacters" :: NullOrUndefined.NullOrUndefined (BooleanType') , "RequireLowercaseCharacters" :: NullOrUndefined.NullOrUndefined (BooleanType') , "AllowUsersToChangePassword" :: NullOrUndefined.NullOrUndefined (BooleanType') , "MaxPasswordAge" :: NullOrUndefined.NullOrUndefined (MaxPasswordAgeType') , "PasswordReusePrevention" :: NullOrUndefined.NullOrUndefined (PasswordReusePreventionType') , "HardExpiry" :: NullOrUndefined.NullOrUndefined (BooleanObjectType') } ) -> UpdateAccountPasswordPolicyRequest
newUpdateAccountPasswordPolicyRequest'  customize = (UpdateAccountPasswordPolicyRequest <<< customize) { "AllowUsersToChangePassword": (NullOrUndefined Nothing), "HardExpiry": (NullOrUndefined Nothing), "MaxPasswordAge": (NullOrUndefined Nothing), "MinimumPasswordLength": (NullOrUndefined Nothing), "PasswordReusePrevention": (NullOrUndefined Nothing), "RequireLowercaseCharacters": (NullOrUndefined Nothing), "RequireNumbers": (NullOrUndefined Nothing), "RequireSymbols": (NullOrUndefined Nothing), "RequireUppercaseCharacters": (NullOrUndefined Nothing) }



newtype UpdateAssumeRolePolicyRequest = UpdateAssumeRolePolicyRequest 
  { "RoleName" :: (RoleNameType')
  , "PolicyDocument" :: (PolicyDocumentType')
  }
derive instance newtypeUpdateAssumeRolePolicyRequest :: Newtype UpdateAssumeRolePolicyRequest _
derive instance repGenericUpdateAssumeRolePolicyRequest :: Generic UpdateAssumeRolePolicyRequest _
instance showUpdateAssumeRolePolicyRequest :: Show UpdateAssumeRolePolicyRequest where
  show = genericShow
instance decodeUpdateAssumeRolePolicyRequest :: Decode UpdateAssumeRolePolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateAssumeRolePolicyRequest :: Encode UpdateAssumeRolePolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateAssumeRolePolicyRequest from required parameters
newUpdateAssumeRolePolicyRequest :: PolicyDocumentType' -> RoleNameType' -> UpdateAssumeRolePolicyRequest
newUpdateAssumeRolePolicyRequest _PolicyDocument _RoleName = UpdateAssumeRolePolicyRequest { "PolicyDocument": _PolicyDocument, "RoleName": _RoleName }

-- | Constructs UpdateAssumeRolePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateAssumeRolePolicyRequest' :: PolicyDocumentType' -> RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "PolicyDocument" :: (PolicyDocumentType') } -> {"RoleName" :: (RoleNameType') , "PolicyDocument" :: (PolicyDocumentType') } ) -> UpdateAssumeRolePolicyRequest
newUpdateAssumeRolePolicyRequest' _PolicyDocument _RoleName customize = (UpdateAssumeRolePolicyRequest <<< customize) { "PolicyDocument": _PolicyDocument, "RoleName": _RoleName }



newtype UpdateGroupRequest = UpdateGroupRequest 
  { "GroupName" :: (GroupNameType')
  , "NewPath" :: NullOrUndefined.NullOrUndefined (PathType')
  , "NewGroupName" :: NullOrUndefined.NullOrUndefined (GroupNameType')
  }
derive instance newtypeUpdateGroupRequest :: Newtype UpdateGroupRequest _
derive instance repGenericUpdateGroupRequest :: Generic UpdateGroupRequest _
instance showUpdateGroupRequest :: Show UpdateGroupRequest where
  show = genericShow
instance decodeUpdateGroupRequest :: Decode UpdateGroupRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateGroupRequest :: Encode UpdateGroupRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateGroupRequest from required parameters
newUpdateGroupRequest :: GroupNameType' -> UpdateGroupRequest
newUpdateGroupRequest _GroupName = UpdateGroupRequest { "GroupName": _GroupName, "NewGroupName": (NullOrUndefined Nothing), "NewPath": (NullOrUndefined Nothing) }

-- | Constructs UpdateGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGroupRequest' :: GroupNameType' -> ( { "GroupName" :: (GroupNameType') , "NewPath" :: NullOrUndefined.NullOrUndefined (PathType') , "NewGroupName" :: NullOrUndefined.NullOrUndefined (GroupNameType') } -> {"GroupName" :: (GroupNameType') , "NewPath" :: NullOrUndefined.NullOrUndefined (PathType') , "NewGroupName" :: NullOrUndefined.NullOrUndefined (GroupNameType') } ) -> UpdateGroupRequest
newUpdateGroupRequest' _GroupName customize = (UpdateGroupRequest <<< customize) { "GroupName": _GroupName, "NewGroupName": (NullOrUndefined Nothing), "NewPath": (NullOrUndefined Nothing) }



newtype UpdateLoginProfileRequest = UpdateLoginProfileRequest 
  { "UserName" :: (UserNameType')
  , "Password" :: NullOrUndefined.NullOrUndefined (PasswordType')
  , "PasswordResetRequired" :: NullOrUndefined.NullOrUndefined (BooleanObjectType')
  }
derive instance newtypeUpdateLoginProfileRequest :: Newtype UpdateLoginProfileRequest _
derive instance repGenericUpdateLoginProfileRequest :: Generic UpdateLoginProfileRequest _
instance showUpdateLoginProfileRequest :: Show UpdateLoginProfileRequest where
  show = genericShow
instance decodeUpdateLoginProfileRequest :: Decode UpdateLoginProfileRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateLoginProfileRequest :: Encode UpdateLoginProfileRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateLoginProfileRequest from required parameters
newUpdateLoginProfileRequest :: UserNameType' -> UpdateLoginProfileRequest
newUpdateLoginProfileRequest _UserName = UpdateLoginProfileRequest { "UserName": _UserName, "Password": (NullOrUndefined Nothing), "PasswordResetRequired": (NullOrUndefined Nothing) }

-- | Constructs UpdateLoginProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateLoginProfileRequest' :: UserNameType' -> ( { "UserName" :: (UserNameType') , "Password" :: NullOrUndefined.NullOrUndefined (PasswordType') , "PasswordResetRequired" :: NullOrUndefined.NullOrUndefined (BooleanObjectType') } -> {"UserName" :: (UserNameType') , "Password" :: NullOrUndefined.NullOrUndefined (PasswordType') , "PasswordResetRequired" :: NullOrUndefined.NullOrUndefined (BooleanObjectType') } ) -> UpdateLoginProfileRequest
newUpdateLoginProfileRequest' _UserName customize = (UpdateLoginProfileRequest <<< customize) { "UserName": _UserName, "Password": (NullOrUndefined Nothing), "PasswordResetRequired": (NullOrUndefined Nothing) }



newtype UpdateOpenIDConnectProviderThumbprintRequest = UpdateOpenIDConnectProviderThumbprintRequest 
  { "OpenIDConnectProviderArn" :: (ArnType')
  , "ThumbprintList" :: (ThumbprintListType')
  }
derive instance newtypeUpdateOpenIDConnectProviderThumbprintRequest :: Newtype UpdateOpenIDConnectProviderThumbprintRequest _
derive instance repGenericUpdateOpenIDConnectProviderThumbprintRequest :: Generic UpdateOpenIDConnectProviderThumbprintRequest _
instance showUpdateOpenIDConnectProviderThumbprintRequest :: Show UpdateOpenIDConnectProviderThumbprintRequest where
  show = genericShow
instance decodeUpdateOpenIDConnectProviderThumbprintRequest :: Decode UpdateOpenIDConnectProviderThumbprintRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateOpenIDConnectProviderThumbprintRequest :: Encode UpdateOpenIDConnectProviderThumbprintRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateOpenIDConnectProviderThumbprintRequest from required parameters
newUpdateOpenIDConnectProviderThumbprintRequest :: ArnType' -> ThumbprintListType' -> UpdateOpenIDConnectProviderThumbprintRequest
newUpdateOpenIDConnectProviderThumbprintRequest _OpenIDConnectProviderArn _ThumbprintList = UpdateOpenIDConnectProviderThumbprintRequest { "OpenIDConnectProviderArn": _OpenIDConnectProviderArn, "ThumbprintList": _ThumbprintList }

-- | Constructs UpdateOpenIDConnectProviderThumbprintRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateOpenIDConnectProviderThumbprintRequest' :: ArnType' -> ThumbprintListType' -> ( { "OpenIDConnectProviderArn" :: (ArnType') , "ThumbprintList" :: (ThumbprintListType') } -> {"OpenIDConnectProviderArn" :: (ArnType') , "ThumbprintList" :: (ThumbprintListType') } ) -> UpdateOpenIDConnectProviderThumbprintRequest
newUpdateOpenIDConnectProviderThumbprintRequest' _OpenIDConnectProviderArn _ThumbprintList customize = (UpdateOpenIDConnectProviderThumbprintRequest <<< customize) { "OpenIDConnectProviderArn": _OpenIDConnectProviderArn, "ThumbprintList": _ThumbprintList }



newtype UpdateRoleDescriptionRequest = UpdateRoleDescriptionRequest 
  { "RoleName" :: (RoleNameType')
  , "Description" :: (RoleDescriptionType')
  }
derive instance newtypeUpdateRoleDescriptionRequest :: Newtype UpdateRoleDescriptionRequest _
derive instance repGenericUpdateRoleDescriptionRequest :: Generic UpdateRoleDescriptionRequest _
instance showUpdateRoleDescriptionRequest :: Show UpdateRoleDescriptionRequest where
  show = genericShow
instance decodeUpdateRoleDescriptionRequest :: Decode UpdateRoleDescriptionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateRoleDescriptionRequest :: Encode UpdateRoleDescriptionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateRoleDescriptionRequest from required parameters
newUpdateRoleDescriptionRequest :: RoleDescriptionType' -> RoleNameType' -> UpdateRoleDescriptionRequest
newUpdateRoleDescriptionRequest _Description _RoleName = UpdateRoleDescriptionRequest { "Description": _Description, "RoleName": _RoleName }

-- | Constructs UpdateRoleDescriptionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRoleDescriptionRequest' :: RoleDescriptionType' -> RoleNameType' -> ( { "RoleName" :: (RoleNameType') , "Description" :: (RoleDescriptionType') } -> {"RoleName" :: (RoleNameType') , "Description" :: (RoleDescriptionType') } ) -> UpdateRoleDescriptionRequest
newUpdateRoleDescriptionRequest' _Description _RoleName customize = (UpdateRoleDescriptionRequest <<< customize) { "Description": _Description, "RoleName": _RoleName }



newtype UpdateRoleDescriptionResponse = UpdateRoleDescriptionResponse 
  { "Role" :: NullOrUndefined.NullOrUndefined (Role)
  }
derive instance newtypeUpdateRoleDescriptionResponse :: Newtype UpdateRoleDescriptionResponse _
derive instance repGenericUpdateRoleDescriptionResponse :: Generic UpdateRoleDescriptionResponse _
instance showUpdateRoleDescriptionResponse :: Show UpdateRoleDescriptionResponse where
  show = genericShow
instance decodeUpdateRoleDescriptionResponse :: Decode UpdateRoleDescriptionResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateRoleDescriptionResponse :: Encode UpdateRoleDescriptionResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateRoleDescriptionResponse from required parameters
newUpdateRoleDescriptionResponse :: UpdateRoleDescriptionResponse
newUpdateRoleDescriptionResponse  = UpdateRoleDescriptionResponse { "Role": (NullOrUndefined Nothing) }

-- | Constructs UpdateRoleDescriptionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRoleDescriptionResponse' :: ( { "Role" :: NullOrUndefined.NullOrUndefined (Role) } -> {"Role" :: NullOrUndefined.NullOrUndefined (Role) } ) -> UpdateRoleDescriptionResponse
newUpdateRoleDescriptionResponse'  customize = (UpdateRoleDescriptionResponse <<< customize) { "Role": (NullOrUndefined Nothing) }



newtype UpdateSAMLProviderRequest = UpdateSAMLProviderRequest 
  { "SAMLMetadataDocument" :: (SAMLMetadataDocumentType)
  , "SAMLProviderArn" :: (ArnType')
  }
derive instance newtypeUpdateSAMLProviderRequest :: Newtype UpdateSAMLProviderRequest _
derive instance repGenericUpdateSAMLProviderRequest :: Generic UpdateSAMLProviderRequest _
instance showUpdateSAMLProviderRequest :: Show UpdateSAMLProviderRequest where
  show = genericShow
instance decodeUpdateSAMLProviderRequest :: Decode UpdateSAMLProviderRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateSAMLProviderRequest :: Encode UpdateSAMLProviderRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateSAMLProviderRequest from required parameters
newUpdateSAMLProviderRequest :: SAMLMetadataDocumentType -> ArnType' -> UpdateSAMLProviderRequest
newUpdateSAMLProviderRequest _SAMLMetadataDocument _SAMLProviderArn = UpdateSAMLProviderRequest { "SAMLMetadataDocument": _SAMLMetadataDocument, "SAMLProviderArn": _SAMLProviderArn }

-- | Constructs UpdateSAMLProviderRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateSAMLProviderRequest' :: SAMLMetadataDocumentType -> ArnType' -> ( { "SAMLMetadataDocument" :: (SAMLMetadataDocumentType) , "SAMLProviderArn" :: (ArnType') } -> {"SAMLMetadataDocument" :: (SAMLMetadataDocumentType) , "SAMLProviderArn" :: (ArnType') } ) -> UpdateSAMLProviderRequest
newUpdateSAMLProviderRequest' _SAMLMetadataDocument _SAMLProviderArn customize = (UpdateSAMLProviderRequest <<< customize) { "SAMLMetadataDocument": _SAMLMetadataDocument, "SAMLProviderArn": _SAMLProviderArn }



-- | <p>Contains the response to a successful <a>UpdateSAMLProvider</a> request. </p>
newtype UpdateSAMLProviderResponse = UpdateSAMLProviderResponse 
  { "SAMLProviderArn" :: NullOrUndefined.NullOrUndefined (ArnType')
  }
derive instance newtypeUpdateSAMLProviderResponse :: Newtype UpdateSAMLProviderResponse _
derive instance repGenericUpdateSAMLProviderResponse :: Generic UpdateSAMLProviderResponse _
instance showUpdateSAMLProviderResponse :: Show UpdateSAMLProviderResponse where
  show = genericShow
instance decodeUpdateSAMLProviderResponse :: Decode UpdateSAMLProviderResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateSAMLProviderResponse :: Encode UpdateSAMLProviderResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateSAMLProviderResponse from required parameters
newUpdateSAMLProviderResponse :: UpdateSAMLProviderResponse
newUpdateSAMLProviderResponse  = UpdateSAMLProviderResponse { "SAMLProviderArn": (NullOrUndefined Nothing) }

-- | Constructs UpdateSAMLProviderResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateSAMLProviderResponse' :: ( { "SAMLProviderArn" :: NullOrUndefined.NullOrUndefined (ArnType') } -> {"SAMLProviderArn" :: NullOrUndefined.NullOrUndefined (ArnType') } ) -> UpdateSAMLProviderResponse
newUpdateSAMLProviderResponse'  customize = (UpdateSAMLProviderResponse <<< customize) { "SAMLProviderArn": (NullOrUndefined Nothing) }



newtype UpdateSSHPublicKeyRequest = UpdateSSHPublicKeyRequest 
  { "UserName" :: (UserNameType')
  , "SSHPublicKeyId" :: (PublicKeyIdType')
  , "Status" :: (StatusType')
  }
derive instance newtypeUpdateSSHPublicKeyRequest :: Newtype UpdateSSHPublicKeyRequest _
derive instance repGenericUpdateSSHPublicKeyRequest :: Generic UpdateSSHPublicKeyRequest _
instance showUpdateSSHPublicKeyRequest :: Show UpdateSSHPublicKeyRequest where
  show = genericShow
instance decodeUpdateSSHPublicKeyRequest :: Decode UpdateSSHPublicKeyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateSSHPublicKeyRequest :: Encode UpdateSSHPublicKeyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateSSHPublicKeyRequest from required parameters
newUpdateSSHPublicKeyRequest :: PublicKeyIdType' -> StatusType' -> UserNameType' -> UpdateSSHPublicKeyRequest
newUpdateSSHPublicKeyRequest _SSHPublicKeyId _Status _UserName = UpdateSSHPublicKeyRequest { "SSHPublicKeyId": _SSHPublicKeyId, "Status": _Status, "UserName": _UserName }

-- | Constructs UpdateSSHPublicKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateSSHPublicKeyRequest' :: PublicKeyIdType' -> StatusType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') , "Status" :: (StatusType') } -> {"UserName" :: (UserNameType') , "SSHPublicKeyId" :: (PublicKeyIdType') , "Status" :: (StatusType') } ) -> UpdateSSHPublicKeyRequest
newUpdateSSHPublicKeyRequest' _SSHPublicKeyId _Status _UserName customize = (UpdateSSHPublicKeyRequest <<< customize) { "SSHPublicKeyId": _SSHPublicKeyId, "Status": _Status, "UserName": _UserName }



newtype UpdateServerCertificateRequest = UpdateServerCertificateRequest 
  { "ServerCertificateName" :: (ServerCertificateNameType')
  , "NewPath" :: NullOrUndefined.NullOrUndefined (PathType')
  , "NewServerCertificateName" :: NullOrUndefined.NullOrUndefined (ServerCertificateNameType')
  }
derive instance newtypeUpdateServerCertificateRequest :: Newtype UpdateServerCertificateRequest _
derive instance repGenericUpdateServerCertificateRequest :: Generic UpdateServerCertificateRequest _
instance showUpdateServerCertificateRequest :: Show UpdateServerCertificateRequest where
  show = genericShow
instance decodeUpdateServerCertificateRequest :: Decode UpdateServerCertificateRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateServerCertificateRequest :: Encode UpdateServerCertificateRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateServerCertificateRequest from required parameters
newUpdateServerCertificateRequest :: ServerCertificateNameType' -> UpdateServerCertificateRequest
newUpdateServerCertificateRequest _ServerCertificateName = UpdateServerCertificateRequest { "ServerCertificateName": _ServerCertificateName, "NewPath": (NullOrUndefined Nothing), "NewServerCertificateName": (NullOrUndefined Nothing) }

-- | Constructs UpdateServerCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServerCertificateRequest' :: ServerCertificateNameType' -> ( { "ServerCertificateName" :: (ServerCertificateNameType') , "NewPath" :: NullOrUndefined.NullOrUndefined (PathType') , "NewServerCertificateName" :: NullOrUndefined.NullOrUndefined (ServerCertificateNameType') } -> {"ServerCertificateName" :: (ServerCertificateNameType') , "NewPath" :: NullOrUndefined.NullOrUndefined (PathType') , "NewServerCertificateName" :: NullOrUndefined.NullOrUndefined (ServerCertificateNameType') } ) -> UpdateServerCertificateRequest
newUpdateServerCertificateRequest' _ServerCertificateName customize = (UpdateServerCertificateRequest <<< customize) { "ServerCertificateName": _ServerCertificateName, "NewPath": (NullOrUndefined Nothing), "NewServerCertificateName": (NullOrUndefined Nothing) }



newtype UpdateServiceSpecificCredentialRequest = UpdateServiceSpecificCredentialRequest 
  { "UserName" :: NullOrUndefined.NullOrUndefined (UserNameType')
  , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId')
  , "Status" :: (StatusType')
  }
derive instance newtypeUpdateServiceSpecificCredentialRequest :: Newtype UpdateServiceSpecificCredentialRequest _
derive instance repGenericUpdateServiceSpecificCredentialRequest :: Generic UpdateServiceSpecificCredentialRequest _
instance showUpdateServiceSpecificCredentialRequest :: Show UpdateServiceSpecificCredentialRequest where
  show = genericShow
instance decodeUpdateServiceSpecificCredentialRequest :: Decode UpdateServiceSpecificCredentialRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateServiceSpecificCredentialRequest :: Encode UpdateServiceSpecificCredentialRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateServiceSpecificCredentialRequest from required parameters
newUpdateServiceSpecificCredentialRequest :: ServiceSpecificCredentialId' -> StatusType' -> UpdateServiceSpecificCredentialRequest
newUpdateServiceSpecificCredentialRequest _ServiceSpecificCredentialId _Status = UpdateServiceSpecificCredentialRequest { "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "Status": _Status, "UserName": (NullOrUndefined Nothing) }

-- | Constructs UpdateServiceSpecificCredentialRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServiceSpecificCredentialRequest' :: ServiceSpecificCredentialId' -> StatusType' -> ( { "UserName" :: NullOrUndefined.NullOrUndefined (UserNameType') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') , "Status" :: (StatusType') } -> {"UserName" :: NullOrUndefined.NullOrUndefined (UserNameType') , "ServiceSpecificCredentialId" :: (ServiceSpecificCredentialId') , "Status" :: (StatusType') } ) -> UpdateServiceSpecificCredentialRequest
newUpdateServiceSpecificCredentialRequest' _ServiceSpecificCredentialId _Status customize = (UpdateServiceSpecificCredentialRequest <<< customize) { "ServiceSpecificCredentialId": _ServiceSpecificCredentialId, "Status": _Status, "UserName": (NullOrUndefined Nothing) }



newtype UpdateSigningCertificateRequest = UpdateSigningCertificateRequest 
  { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType')
  , "CertificateId" :: (CertificateIdType')
  , "Status" :: (StatusType')
  }
derive instance newtypeUpdateSigningCertificateRequest :: Newtype UpdateSigningCertificateRequest _
derive instance repGenericUpdateSigningCertificateRequest :: Generic UpdateSigningCertificateRequest _
instance showUpdateSigningCertificateRequest :: Show UpdateSigningCertificateRequest where
  show = genericShow
instance decodeUpdateSigningCertificateRequest :: Decode UpdateSigningCertificateRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateSigningCertificateRequest :: Encode UpdateSigningCertificateRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateSigningCertificateRequest from required parameters
newUpdateSigningCertificateRequest :: CertificateIdType' -> StatusType' -> UpdateSigningCertificateRequest
newUpdateSigningCertificateRequest _CertificateId _Status = UpdateSigningCertificateRequest { "CertificateId": _CertificateId, "Status": _Status, "UserName": (NullOrUndefined Nothing) }

-- | Constructs UpdateSigningCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateSigningCertificateRequest' :: CertificateIdType' -> StatusType' -> ( { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') , "CertificateId" :: (CertificateIdType') , "Status" :: (StatusType') } -> {"UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') , "CertificateId" :: (CertificateIdType') , "Status" :: (StatusType') } ) -> UpdateSigningCertificateRequest
newUpdateSigningCertificateRequest' _CertificateId _Status customize = (UpdateSigningCertificateRequest <<< customize) { "CertificateId": _CertificateId, "Status": _Status, "UserName": (NullOrUndefined Nothing) }



newtype UpdateUserRequest = UpdateUserRequest 
  { "UserName" :: (ExistingUserNameType')
  , "NewPath" :: NullOrUndefined.NullOrUndefined (PathType')
  , "NewUserName" :: NullOrUndefined.NullOrUndefined (UserNameType')
  }
derive instance newtypeUpdateUserRequest :: Newtype UpdateUserRequest _
derive instance repGenericUpdateUserRequest :: Generic UpdateUserRequest _
instance showUpdateUserRequest :: Show UpdateUserRequest where
  show = genericShow
instance decodeUpdateUserRequest :: Decode UpdateUserRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateUserRequest :: Encode UpdateUserRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateUserRequest from required parameters
newUpdateUserRequest :: ExistingUserNameType' -> UpdateUserRequest
newUpdateUserRequest _UserName = UpdateUserRequest { "UserName": _UserName, "NewPath": (NullOrUndefined Nothing), "NewUserName": (NullOrUndefined Nothing) }

-- | Constructs UpdateUserRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateUserRequest' :: ExistingUserNameType' -> ( { "UserName" :: (ExistingUserNameType') , "NewPath" :: NullOrUndefined.NullOrUndefined (PathType') , "NewUserName" :: NullOrUndefined.NullOrUndefined (UserNameType') } -> {"UserName" :: (ExistingUserNameType') , "NewPath" :: NullOrUndefined.NullOrUndefined (PathType') , "NewUserName" :: NullOrUndefined.NullOrUndefined (UserNameType') } ) -> UpdateUserRequest
newUpdateUserRequest' _UserName customize = (UpdateUserRequest <<< customize) { "UserName": _UserName, "NewPath": (NullOrUndefined Nothing), "NewUserName": (NullOrUndefined Nothing) }



newtype UploadSSHPublicKeyRequest = UploadSSHPublicKeyRequest 
  { "UserName" :: (UserNameType')
  , "SSHPublicKeyBody" :: (PublicKeyMaterialType')
  }
derive instance newtypeUploadSSHPublicKeyRequest :: Newtype UploadSSHPublicKeyRequest _
derive instance repGenericUploadSSHPublicKeyRequest :: Generic UploadSSHPublicKeyRequest _
instance showUploadSSHPublicKeyRequest :: Show UploadSSHPublicKeyRequest where
  show = genericShow
instance decodeUploadSSHPublicKeyRequest :: Decode UploadSSHPublicKeyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUploadSSHPublicKeyRequest :: Encode UploadSSHPublicKeyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UploadSSHPublicKeyRequest from required parameters
newUploadSSHPublicKeyRequest :: PublicKeyMaterialType' -> UserNameType' -> UploadSSHPublicKeyRequest
newUploadSSHPublicKeyRequest _SSHPublicKeyBody _UserName = UploadSSHPublicKeyRequest { "SSHPublicKeyBody": _SSHPublicKeyBody, "UserName": _UserName }

-- | Constructs UploadSSHPublicKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadSSHPublicKeyRequest' :: PublicKeyMaterialType' -> UserNameType' -> ( { "UserName" :: (UserNameType') , "SSHPublicKeyBody" :: (PublicKeyMaterialType') } -> {"UserName" :: (UserNameType') , "SSHPublicKeyBody" :: (PublicKeyMaterialType') } ) -> UploadSSHPublicKeyRequest
newUploadSSHPublicKeyRequest' _SSHPublicKeyBody _UserName customize = (UploadSSHPublicKeyRequest <<< customize) { "SSHPublicKeyBody": _SSHPublicKeyBody, "UserName": _UserName }



-- | <p>Contains the response to a successful <a>UploadSSHPublicKey</a> request.</p>
newtype UploadSSHPublicKeyResponse = UploadSSHPublicKeyResponse 
  { "SSHPublicKey" :: NullOrUndefined.NullOrUndefined (SSHPublicKey)
  }
derive instance newtypeUploadSSHPublicKeyResponse :: Newtype UploadSSHPublicKeyResponse _
derive instance repGenericUploadSSHPublicKeyResponse :: Generic UploadSSHPublicKeyResponse _
instance showUploadSSHPublicKeyResponse :: Show UploadSSHPublicKeyResponse where
  show = genericShow
instance decodeUploadSSHPublicKeyResponse :: Decode UploadSSHPublicKeyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUploadSSHPublicKeyResponse :: Encode UploadSSHPublicKeyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UploadSSHPublicKeyResponse from required parameters
newUploadSSHPublicKeyResponse :: UploadSSHPublicKeyResponse
newUploadSSHPublicKeyResponse  = UploadSSHPublicKeyResponse { "SSHPublicKey": (NullOrUndefined Nothing) }

-- | Constructs UploadSSHPublicKeyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadSSHPublicKeyResponse' :: ( { "SSHPublicKey" :: NullOrUndefined.NullOrUndefined (SSHPublicKey) } -> {"SSHPublicKey" :: NullOrUndefined.NullOrUndefined (SSHPublicKey) } ) -> UploadSSHPublicKeyResponse
newUploadSSHPublicKeyResponse'  customize = (UploadSSHPublicKeyResponse <<< customize) { "SSHPublicKey": (NullOrUndefined Nothing) }



newtype UploadServerCertificateRequest = UploadServerCertificateRequest 
  { "Path" :: NullOrUndefined.NullOrUndefined (PathType')
  , "ServerCertificateName" :: (ServerCertificateNameType')
  , "CertificateBody" :: (CertificateBodyType')
  , "PrivateKey" :: (PrivateKeyType')
  , "CertificateChain" :: NullOrUndefined.NullOrUndefined (CertificateChainType')
  }
derive instance newtypeUploadServerCertificateRequest :: Newtype UploadServerCertificateRequest _
derive instance repGenericUploadServerCertificateRequest :: Generic UploadServerCertificateRequest _
instance showUploadServerCertificateRequest :: Show UploadServerCertificateRequest where
  show = genericShow
instance decodeUploadServerCertificateRequest :: Decode UploadServerCertificateRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUploadServerCertificateRequest :: Encode UploadServerCertificateRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UploadServerCertificateRequest from required parameters
newUploadServerCertificateRequest :: CertificateBodyType' -> PrivateKeyType' -> ServerCertificateNameType' -> UploadServerCertificateRequest
newUploadServerCertificateRequest _CertificateBody _PrivateKey _ServerCertificateName = UploadServerCertificateRequest { "CertificateBody": _CertificateBody, "PrivateKey": _PrivateKey, "ServerCertificateName": _ServerCertificateName, "CertificateChain": (NullOrUndefined Nothing), "Path": (NullOrUndefined Nothing) }

-- | Constructs UploadServerCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadServerCertificateRequest' :: CertificateBodyType' -> PrivateKeyType' -> ServerCertificateNameType' -> ( { "Path" :: NullOrUndefined.NullOrUndefined (PathType') , "ServerCertificateName" :: (ServerCertificateNameType') , "CertificateBody" :: (CertificateBodyType') , "PrivateKey" :: (PrivateKeyType') , "CertificateChain" :: NullOrUndefined.NullOrUndefined (CertificateChainType') } -> {"Path" :: NullOrUndefined.NullOrUndefined (PathType') , "ServerCertificateName" :: (ServerCertificateNameType') , "CertificateBody" :: (CertificateBodyType') , "PrivateKey" :: (PrivateKeyType') , "CertificateChain" :: NullOrUndefined.NullOrUndefined (CertificateChainType') } ) -> UploadServerCertificateRequest
newUploadServerCertificateRequest' _CertificateBody _PrivateKey _ServerCertificateName customize = (UploadServerCertificateRequest <<< customize) { "CertificateBody": _CertificateBody, "PrivateKey": _PrivateKey, "ServerCertificateName": _ServerCertificateName, "CertificateChain": (NullOrUndefined Nothing), "Path": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>UploadServerCertificate</a> request. </p>
newtype UploadServerCertificateResponse = UploadServerCertificateResponse 
  { "ServerCertificateMetadata" :: NullOrUndefined.NullOrUndefined (ServerCertificateMetadata)
  }
derive instance newtypeUploadServerCertificateResponse :: Newtype UploadServerCertificateResponse _
derive instance repGenericUploadServerCertificateResponse :: Generic UploadServerCertificateResponse _
instance showUploadServerCertificateResponse :: Show UploadServerCertificateResponse where
  show = genericShow
instance decodeUploadServerCertificateResponse :: Decode UploadServerCertificateResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUploadServerCertificateResponse :: Encode UploadServerCertificateResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UploadServerCertificateResponse from required parameters
newUploadServerCertificateResponse :: UploadServerCertificateResponse
newUploadServerCertificateResponse  = UploadServerCertificateResponse { "ServerCertificateMetadata": (NullOrUndefined Nothing) }

-- | Constructs UploadServerCertificateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadServerCertificateResponse' :: ( { "ServerCertificateMetadata" :: NullOrUndefined.NullOrUndefined (ServerCertificateMetadata) } -> {"ServerCertificateMetadata" :: NullOrUndefined.NullOrUndefined (ServerCertificateMetadata) } ) -> UploadServerCertificateResponse
newUploadServerCertificateResponse'  customize = (UploadServerCertificateResponse <<< customize) { "ServerCertificateMetadata": (NullOrUndefined Nothing) }



newtype UploadSigningCertificateRequest = UploadSigningCertificateRequest 
  { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType')
  , "CertificateBody" :: (CertificateBodyType')
  }
derive instance newtypeUploadSigningCertificateRequest :: Newtype UploadSigningCertificateRequest _
derive instance repGenericUploadSigningCertificateRequest :: Generic UploadSigningCertificateRequest _
instance showUploadSigningCertificateRequest :: Show UploadSigningCertificateRequest where
  show = genericShow
instance decodeUploadSigningCertificateRequest :: Decode UploadSigningCertificateRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUploadSigningCertificateRequest :: Encode UploadSigningCertificateRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UploadSigningCertificateRequest from required parameters
newUploadSigningCertificateRequest :: CertificateBodyType' -> UploadSigningCertificateRequest
newUploadSigningCertificateRequest _CertificateBody = UploadSigningCertificateRequest { "CertificateBody": _CertificateBody, "UserName": (NullOrUndefined Nothing) }

-- | Constructs UploadSigningCertificateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadSigningCertificateRequest' :: CertificateBodyType' -> ( { "UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') , "CertificateBody" :: (CertificateBodyType') } -> {"UserName" :: NullOrUndefined.NullOrUndefined (ExistingUserNameType') , "CertificateBody" :: (CertificateBodyType') } ) -> UploadSigningCertificateRequest
newUploadSigningCertificateRequest' _CertificateBody customize = (UploadSigningCertificateRequest <<< customize) { "CertificateBody": _CertificateBody, "UserName": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a successful <a>UploadSigningCertificate</a> request. </p>
newtype UploadSigningCertificateResponse = UploadSigningCertificateResponse 
  { "Certificate" :: (SigningCertificate)
  }
derive instance newtypeUploadSigningCertificateResponse :: Newtype UploadSigningCertificateResponse _
derive instance repGenericUploadSigningCertificateResponse :: Generic UploadSigningCertificateResponse _
instance showUploadSigningCertificateResponse :: Show UploadSigningCertificateResponse where
  show = genericShow
instance decodeUploadSigningCertificateResponse :: Decode UploadSigningCertificateResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUploadSigningCertificateResponse :: Encode UploadSigningCertificateResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UploadSigningCertificateResponse from required parameters
newUploadSigningCertificateResponse :: SigningCertificate -> UploadSigningCertificateResponse
newUploadSigningCertificateResponse _Certificate = UploadSigningCertificateResponse { "Certificate": _Certificate }

-- | Constructs UploadSigningCertificateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadSigningCertificateResponse' :: SigningCertificate -> ( { "Certificate" :: (SigningCertificate) } -> {"Certificate" :: (SigningCertificate) } ) -> UploadSigningCertificateResponse
newUploadSigningCertificateResponse' _Certificate customize = (UploadSigningCertificateResponse <<< customize) { "Certificate": _Certificate }



-- | <p>Contains information about an IAM user entity.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateUser</a> </p> </li> <li> <p> <a>GetUser</a> </p> </li> <li> <p> <a>ListUsers</a> </p> </li> </ul>
newtype User = User 
  { "Path" :: (PathType')
  , "UserName" :: (UserNameType')
  , "UserId" :: (IdType')
  , "Arn" :: (ArnType')
  , "CreateDate" :: (DateType')
  , "PasswordLastUsed" :: NullOrUndefined.NullOrUndefined (DateType')
  }
derive instance newtypeUser :: Newtype User _
derive instance repGenericUser :: Generic User _
instance showUser :: Show User where
  show = genericShow
instance decodeUser :: Decode User where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUser :: Encode User where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs User from required parameters
newUser :: ArnType' -> DateType' -> PathType' -> IdType' -> UserNameType' -> User
newUser _Arn _CreateDate _Path _UserId _UserName = User { "Arn": _Arn, "CreateDate": _CreateDate, "Path": _Path, "UserId": _UserId, "UserName": _UserName, "PasswordLastUsed": (NullOrUndefined Nothing) }

-- | Constructs User's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUser' :: ArnType' -> DateType' -> PathType' -> IdType' -> UserNameType' -> ( { "Path" :: (PathType') , "UserName" :: (UserNameType') , "UserId" :: (IdType') , "Arn" :: (ArnType') , "CreateDate" :: (DateType') , "PasswordLastUsed" :: NullOrUndefined.NullOrUndefined (DateType') } -> {"Path" :: (PathType') , "UserName" :: (UserNameType') , "UserId" :: (IdType') , "Arn" :: (ArnType') , "CreateDate" :: (DateType') , "PasswordLastUsed" :: NullOrUndefined.NullOrUndefined (DateType') } ) -> User
newUser' _Arn _CreateDate _Path _UserId _UserName customize = (User <<< customize) { "Arn": _Arn, "CreateDate": _CreateDate, "Path": _Path, "UserId": _UserId, "UserName": _UserName, "PasswordLastUsed": (NullOrUndefined Nothing) }



-- | <p>Contains information about an IAM user, including all the user's policies and all the IAM groups the user is in.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>
newtype UserDetail = UserDetail 
  { "Path" :: NullOrUndefined.NullOrUndefined (PathType')
  , "UserName" :: NullOrUndefined.NullOrUndefined (UserNameType')
  , "UserId" :: NullOrUndefined.NullOrUndefined (IdType')
  , "Arn" :: NullOrUndefined.NullOrUndefined (ArnType')
  , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType')
  , "UserPolicyList" :: NullOrUndefined.NullOrUndefined (PolicyDetailListType')
  , "GroupList" :: NullOrUndefined.NullOrUndefined (GroupNameListType')
  , "AttachedManagedPolicies" :: NullOrUndefined.NullOrUndefined (AttachedPoliciesListType')
  }
derive instance newtypeUserDetail :: Newtype UserDetail _
derive instance repGenericUserDetail :: Generic UserDetail _
instance showUserDetail :: Show UserDetail where
  show = genericShow
instance decodeUserDetail :: Decode UserDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUserDetail :: Encode UserDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UserDetail from required parameters
newUserDetail :: UserDetail
newUserDetail  = UserDetail { "Arn": (NullOrUndefined Nothing), "AttachedManagedPolicies": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "GroupList": (NullOrUndefined Nothing), "Path": (NullOrUndefined Nothing), "UserId": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing), "UserPolicyList": (NullOrUndefined Nothing) }

-- | Constructs UserDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUserDetail' :: ( { "Path" :: NullOrUndefined.NullOrUndefined (PathType') , "UserName" :: NullOrUndefined.NullOrUndefined (UserNameType') , "UserId" :: NullOrUndefined.NullOrUndefined (IdType') , "Arn" :: NullOrUndefined.NullOrUndefined (ArnType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') , "UserPolicyList" :: NullOrUndefined.NullOrUndefined (PolicyDetailListType') , "GroupList" :: NullOrUndefined.NullOrUndefined (GroupNameListType') , "AttachedManagedPolicies" :: NullOrUndefined.NullOrUndefined (AttachedPoliciesListType') } -> {"Path" :: NullOrUndefined.NullOrUndefined (PathType') , "UserName" :: NullOrUndefined.NullOrUndefined (UserNameType') , "UserId" :: NullOrUndefined.NullOrUndefined (IdType') , "Arn" :: NullOrUndefined.NullOrUndefined (ArnType') , "CreateDate" :: NullOrUndefined.NullOrUndefined (DateType') , "UserPolicyList" :: NullOrUndefined.NullOrUndefined (PolicyDetailListType') , "GroupList" :: NullOrUndefined.NullOrUndefined (GroupNameListType') , "AttachedManagedPolicies" :: NullOrUndefined.NullOrUndefined (AttachedPoliciesListType') } ) -> UserDetail
newUserDetail'  customize = (UserDetail <<< customize) { "Arn": (NullOrUndefined Nothing), "AttachedManagedPolicies": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "GroupList": (NullOrUndefined Nothing), "Path": (NullOrUndefined Nothing), "UserId": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing), "UserPolicyList": (NullOrUndefined Nothing) }



-- | <p>Contains information about a virtual MFA device.</p>
newtype VirtualMFADevice = VirtualMFADevice 
  { "SerialNumber" :: (SerialNumberType')
  , "Base32StringSeed" :: NullOrUndefined.NullOrUndefined (BootstrapDatum)
  , "QRCodePNG" :: NullOrUndefined.NullOrUndefined (BootstrapDatum)
  , "User" :: NullOrUndefined.NullOrUndefined (User)
  , "EnableDate" :: NullOrUndefined.NullOrUndefined (DateType')
  }
derive instance newtypeVirtualMFADevice :: Newtype VirtualMFADevice _
derive instance repGenericVirtualMFADevice :: Generic VirtualMFADevice _
instance showVirtualMFADevice :: Show VirtualMFADevice where
  show = genericShow
instance decodeVirtualMFADevice :: Decode VirtualMFADevice where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeVirtualMFADevice :: Encode VirtualMFADevice where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs VirtualMFADevice from required parameters
newVirtualMFADevice :: SerialNumberType' -> VirtualMFADevice
newVirtualMFADevice _SerialNumber = VirtualMFADevice { "SerialNumber": _SerialNumber, "Base32StringSeed": (NullOrUndefined Nothing), "EnableDate": (NullOrUndefined Nothing), "QRCodePNG": (NullOrUndefined Nothing), "User": (NullOrUndefined Nothing) }

-- | Constructs VirtualMFADevice's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVirtualMFADevice' :: SerialNumberType' -> ( { "SerialNumber" :: (SerialNumberType') , "Base32StringSeed" :: NullOrUndefined.NullOrUndefined (BootstrapDatum) , "QRCodePNG" :: NullOrUndefined.NullOrUndefined (BootstrapDatum) , "User" :: NullOrUndefined.NullOrUndefined (User) , "EnableDate" :: NullOrUndefined.NullOrUndefined (DateType') } -> {"SerialNumber" :: (SerialNumberType') , "Base32StringSeed" :: NullOrUndefined.NullOrUndefined (BootstrapDatum) , "QRCodePNG" :: NullOrUndefined.NullOrUndefined (BootstrapDatum) , "User" :: NullOrUndefined.NullOrUndefined (User) , "EnableDate" :: NullOrUndefined.NullOrUndefined (DateType') } ) -> VirtualMFADevice
newVirtualMFADevice' _SerialNumber customize = (VirtualMFADevice <<< customize) { "SerialNumber": _SerialNumber, "Base32StringSeed": (NullOrUndefined Nothing), "EnableDate": (NullOrUndefined Nothing), "QRCodePNG": (NullOrUndefined Nothing), "User": (NullOrUndefined Nothing) }



newtype AccessKeyIdType' = AccessKeyIdType' String
derive instance newtypeAccessKeyIdType' :: Newtype AccessKeyIdType' _
derive instance repGenericAccessKeyIdType' :: Generic AccessKeyIdType' _
instance showAccessKeyIdType' :: Show AccessKeyIdType' where
  show = genericShow
instance decodeAccessKeyIdType' :: Decode AccessKeyIdType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccessKeyIdType' :: Encode AccessKeyIdType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains a list of access key metadata.</p> <p>This data type is used as a response element in the <a>ListAccessKeys</a> action.</p>
newtype AccessKeyMetadataListType' = AccessKeyMetadataListType' (Array AccessKeyMetadata)
derive instance newtypeAccessKeyMetadataListType' :: Newtype AccessKeyMetadataListType' _
derive instance repGenericAccessKeyMetadataListType' :: Generic AccessKeyMetadataListType' _
instance showAccessKeyMetadataListType' :: Show AccessKeyMetadataListType' where
  show = genericShow
instance decodeAccessKeyMetadataListType' :: Decode AccessKeyMetadataListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccessKeyMetadataListType' :: Encode AccessKeyMetadataListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AccessKeySecretType' = AccessKeySecretType' String
derive instance newtypeAccessKeySecretType' :: Newtype AccessKeySecretType' _
derive instance repGenericAccessKeySecretType' :: Generic AccessKeySecretType' _
instance showAccessKeySecretType' :: Show AccessKeySecretType' where
  show = genericShow
instance decodeAccessKeySecretType' :: Decode AccessKeySecretType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccessKeySecretType' :: Encode AccessKeySecretType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AccountAliasListType' = AccountAliasListType' (Array AccountAliasType')
derive instance newtypeAccountAliasListType' :: Newtype AccountAliasListType' _
derive instance repGenericAccountAliasListType' :: Generic AccountAliasListType' _
instance showAccountAliasListType' :: Show AccountAliasListType' where
  show = genericShow
instance decodeAccountAliasListType' :: Decode AccountAliasListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccountAliasListType' :: Encode AccountAliasListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AccountAliasType' = AccountAliasType' String
derive instance newtypeAccountAliasType' :: Newtype AccountAliasType' _
derive instance repGenericAccountAliasType' :: Generic AccountAliasType' _
instance showAccountAliasType' :: Show AccountAliasType' where
  show = genericShow
instance decodeAccountAliasType' :: Decode AccountAliasType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccountAliasType' :: Encode AccountAliasType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS resources.</p> <p>For more information about ARNs, go to <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>. </p>
newtype ArnType' = ArnType' String
derive instance newtypeArnType' :: Newtype ArnType' _
derive instance repGenericArnType' :: Generic ArnType' _
instance showArnType' :: Show ArnType' where
  show = genericShow
instance decodeArnType' :: Decode ArnType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeArnType' :: Encode ArnType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AssignmentStatusType' = AssignmentStatusType' String
derive instance newtypeAssignmentStatusType' :: Newtype AssignmentStatusType' _
derive instance repGenericAssignmentStatusType' :: Generic AssignmentStatusType' _
instance showAssignmentStatusType' :: Show AssignmentStatusType' where
  show = genericShow
instance decodeAssignmentStatusType' :: Decode AssignmentStatusType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAssignmentStatusType' :: Encode AssignmentStatusType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AttachedPoliciesListType' = AttachedPoliciesListType' (Array AttachedPolicy)
derive instance newtypeAttachedPoliciesListType' :: Newtype AttachedPoliciesListType' _
derive instance repGenericAttachedPoliciesListType' :: Generic AttachedPoliciesListType' _
instance showAttachedPoliciesListType' :: Show AttachedPoliciesListType' where
  show = genericShow
instance decodeAttachedPoliciesListType' :: Decode AttachedPoliciesListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttachedPoliciesListType' :: Encode AttachedPoliciesListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AttachmentCountType' = AttachmentCountType' Int
derive instance newtypeAttachmentCountType' :: Newtype AttachmentCountType' _
derive instance repGenericAttachmentCountType' :: Generic AttachmentCountType' _
instance showAttachmentCountType' :: Show AttachmentCountType' where
  show = genericShow
instance decodeAttachmentCountType' :: Decode AttachmentCountType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttachmentCountType' :: Encode AttachmentCountType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AuthenticationCodeType' = AuthenticationCodeType' String
derive instance newtypeAuthenticationCodeType' :: Newtype AuthenticationCodeType' _
derive instance repGenericAuthenticationCodeType' :: Generic AuthenticationCodeType' _
instance showAuthenticationCodeType' :: Show AuthenticationCodeType' where
  show = genericShow
instance decodeAuthenticationCodeType' :: Decode AuthenticationCodeType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAuthenticationCodeType' :: Encode AuthenticationCodeType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype BooleanObjectType' = BooleanObjectType' Boolean
derive instance newtypeBooleanObjectType' :: Newtype BooleanObjectType' _
derive instance repGenericBooleanObjectType' :: Generic BooleanObjectType' _
instance showBooleanObjectType' :: Show BooleanObjectType' where
  show = genericShow
instance decodeBooleanObjectType' :: Decode BooleanObjectType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBooleanObjectType' :: Encode BooleanObjectType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype BooleanType' = BooleanType' Boolean
derive instance newtypeBooleanType' :: Newtype BooleanType' _
derive instance repGenericBooleanType' :: Generic BooleanType' _
instance showBooleanType' :: Show BooleanType' where
  show = genericShow
instance decodeBooleanType' :: Decode BooleanType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBooleanType' :: Encode BooleanType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CertificateBodyType' = CertificateBodyType' String
derive instance newtypeCertificateBodyType' :: Newtype CertificateBodyType' _
derive instance repGenericCertificateBodyType' :: Generic CertificateBodyType' _
instance showCertificateBodyType' :: Show CertificateBodyType' where
  show = genericShow
instance decodeCertificateBodyType' :: Decode CertificateBodyType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCertificateBodyType' :: Encode CertificateBodyType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CertificateChainType' = CertificateChainType' String
derive instance newtypeCertificateChainType' :: Newtype CertificateChainType' _
derive instance repGenericCertificateChainType' :: Generic CertificateChainType' _
instance showCertificateChainType' :: Show CertificateChainType' where
  show = genericShow
instance decodeCertificateChainType' :: Decode CertificateChainType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCertificateChainType' :: Encode CertificateChainType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CertificateIdType' = CertificateIdType' String
derive instance newtypeCertificateIdType' :: Newtype CertificateIdType' _
derive instance repGenericCertificateIdType' :: Generic CertificateIdType' _
instance showCertificateIdType' :: Show CertificateIdType' where
  show = genericShow
instance decodeCertificateIdType' :: Decode CertificateIdType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCertificateIdType' :: Encode CertificateIdType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains a list of signing certificates.</p> <p>This data type is used as a response element in the <a>ListSigningCertificates</a> action.</p>
newtype CertificateListType' = CertificateListType' (Array SigningCertificate)
derive instance newtypeCertificateListType' :: Newtype CertificateListType' _
derive instance repGenericCertificateListType' :: Generic CertificateListType' _
instance showCertificateListType' :: Show CertificateListType' where
  show = genericShow
instance decodeCertificateListType' :: Decode CertificateListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCertificateListType' :: Encode CertificateListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ClientIDListType' = ClientIDListType' (Array ClientIDType')
derive instance newtypeClientIDListType' :: Newtype ClientIDListType' _
derive instance repGenericClientIDListType' :: Generic ClientIDListType' _
instance showClientIDListType' :: Show ClientIDListType' where
  show = genericShow
instance decodeClientIDListType' :: Decode ClientIDListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClientIDListType' :: Encode ClientIDListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ClientIDType' = ClientIDType' String
derive instance newtypeClientIDType' :: Newtype ClientIDType' _
derive instance repGenericClientIDType' :: Generic ClientIDType' _
instance showClientIDType' :: Show ClientIDType' where
  show = genericShow
instance decodeClientIDType' :: Decode ClientIDType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClientIDType' :: Encode ClientIDType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CredentialReportExpiredExceptionMessage' = CredentialReportExpiredExceptionMessage' String
derive instance newtypeCredentialReportExpiredExceptionMessage' :: Newtype CredentialReportExpiredExceptionMessage' _
derive instance repGenericCredentialReportExpiredExceptionMessage' :: Generic CredentialReportExpiredExceptionMessage' _
instance showCredentialReportExpiredExceptionMessage' :: Show CredentialReportExpiredExceptionMessage' where
  show = genericShow
instance decodeCredentialReportExpiredExceptionMessage' :: Decode CredentialReportExpiredExceptionMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCredentialReportExpiredExceptionMessage' :: Encode CredentialReportExpiredExceptionMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CredentialReportNotPresentExceptionMessage' = CredentialReportNotPresentExceptionMessage' String
derive instance newtypeCredentialReportNotPresentExceptionMessage' :: Newtype CredentialReportNotPresentExceptionMessage' _
derive instance repGenericCredentialReportNotPresentExceptionMessage' :: Generic CredentialReportNotPresentExceptionMessage' _
instance showCredentialReportNotPresentExceptionMessage' :: Show CredentialReportNotPresentExceptionMessage' where
  show = genericShow
instance decodeCredentialReportNotPresentExceptionMessage' :: Decode CredentialReportNotPresentExceptionMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCredentialReportNotPresentExceptionMessage' :: Encode CredentialReportNotPresentExceptionMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CredentialReportNotReadyExceptionMessage' = CredentialReportNotReadyExceptionMessage' String
derive instance newtypeCredentialReportNotReadyExceptionMessage' :: Newtype CredentialReportNotReadyExceptionMessage' _
derive instance repGenericCredentialReportNotReadyExceptionMessage' :: Generic CredentialReportNotReadyExceptionMessage' _
instance showCredentialReportNotReadyExceptionMessage' :: Show CredentialReportNotReadyExceptionMessage' where
  show = genericShow
instance decodeCredentialReportNotReadyExceptionMessage' :: Decode CredentialReportNotReadyExceptionMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCredentialReportNotReadyExceptionMessage' :: Encode CredentialReportNotReadyExceptionMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CustomSuffixType' = CustomSuffixType' String
derive instance newtypeCustomSuffixType' :: Newtype CustomSuffixType' _
derive instance repGenericCustomSuffixType' :: Generic CustomSuffixType' _
instance showCustomSuffixType' :: Show CustomSuffixType' where
  show = genericShow
instance decodeCustomSuffixType' :: Decode CustomSuffixType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCustomSuffixType' :: Encode CustomSuffixType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DateType' = DateType' Types.Timestamp
derive instance newtypeDateType' :: Newtype DateType' _
derive instance repGenericDateType' :: Generic DateType' _
instance showDateType' :: Show DateType' where
  show = genericShow
instance decodeDateType' :: Decode DateType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDateType' :: Encode DateType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeleteConflictMessage' = DeleteConflictMessage' String
derive instance newtypeDeleteConflictMessage' :: Newtype DeleteConflictMessage' _
derive instance repGenericDeleteConflictMessage' :: Generic DeleteConflictMessage' _
instance showDeleteConflictMessage' :: Show DeleteConflictMessage' where
  show = genericShow
instance decodeDeleteConflictMessage' :: Decode DeleteConflictMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteConflictMessage' :: Encode DeleteConflictMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DuplicateCertificateMessage' = DuplicateCertificateMessage' String
derive instance newtypeDuplicateCertificateMessage' :: Newtype DuplicateCertificateMessage' _
derive instance repGenericDuplicateCertificateMessage' :: Generic DuplicateCertificateMessage' _
instance showDuplicateCertificateMessage' :: Show DuplicateCertificateMessage' where
  show = genericShow
instance decodeDuplicateCertificateMessage' :: Decode DuplicateCertificateMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDuplicateCertificateMessage' :: Encode DuplicateCertificateMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DuplicateSSHPublicKeyMessage' = DuplicateSSHPublicKeyMessage' String
derive instance newtypeDuplicateSSHPublicKeyMessage' :: Newtype DuplicateSSHPublicKeyMessage' _
derive instance repGenericDuplicateSSHPublicKeyMessage' :: Generic DuplicateSSHPublicKeyMessage' _
instance showDuplicateSSHPublicKeyMessage' :: Show DuplicateSSHPublicKeyMessage' where
  show = genericShow
instance decodeDuplicateSSHPublicKeyMessage' :: Decode DuplicateSSHPublicKeyMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDuplicateSSHPublicKeyMessage' :: Encode DuplicateSSHPublicKeyMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EncodingType' = EncodingType' String
derive instance newtypeEncodingType' :: Newtype EncodingType' _
derive instance repGenericEncodingType' :: Generic EncodingType' _
instance showEncodingType' :: Show EncodingType' where
  show = genericShow
instance decodeEncodingType' :: Decode EncodingType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEncodingType' :: Encode EncodingType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EntityAlreadyExistsMessage' = EntityAlreadyExistsMessage' String
derive instance newtypeEntityAlreadyExistsMessage' :: Newtype EntityAlreadyExistsMessage' _
derive instance repGenericEntityAlreadyExistsMessage' :: Generic EntityAlreadyExistsMessage' _
instance showEntityAlreadyExistsMessage' :: Show EntityAlreadyExistsMessage' where
  show = genericShow
instance decodeEntityAlreadyExistsMessage' :: Decode EntityAlreadyExistsMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEntityAlreadyExistsMessage' :: Encode EntityAlreadyExistsMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EntityListType' = EntityListType' (Array EntityType)
derive instance newtypeEntityListType' :: Newtype EntityListType' _
derive instance repGenericEntityListType' :: Generic EntityListType' _
instance showEntityListType' :: Show EntityListType' where
  show = genericShow
instance decodeEntityListType' :: Decode EntityListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEntityListType' :: Encode EntityListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EntityTemporarilyUnmodifiableMessage' = EntityTemporarilyUnmodifiableMessage' String
derive instance newtypeEntityTemporarilyUnmodifiableMessage' :: Newtype EntityTemporarilyUnmodifiableMessage' _
derive instance repGenericEntityTemporarilyUnmodifiableMessage' :: Generic EntityTemporarilyUnmodifiableMessage' _
instance showEntityTemporarilyUnmodifiableMessage' :: Show EntityTemporarilyUnmodifiableMessage' where
  show = genericShow
instance decodeEntityTemporarilyUnmodifiableMessage' :: Decode EntityTemporarilyUnmodifiableMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEntityTemporarilyUnmodifiableMessage' :: Encode EntityTemporarilyUnmodifiableMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ExistingUserNameType' = ExistingUserNameType' String
derive instance newtypeExistingUserNameType' :: Newtype ExistingUserNameType' _
derive instance repGenericExistingUserNameType' :: Generic ExistingUserNameType' _
instance showExistingUserNameType' :: Show ExistingUserNameType' where
  show = genericShow
instance decodeExistingUserNameType' :: Decode ExistingUserNameType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExistingUserNameType' :: Encode ExistingUserNameType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GroupDetailListType' = GroupDetailListType' (Array GroupDetail)
derive instance newtypeGroupDetailListType' :: Newtype GroupDetailListType' _
derive instance repGenericGroupDetailListType' :: Generic GroupDetailListType' _
instance showGroupDetailListType' :: Show GroupDetailListType' where
  show = genericShow
instance decodeGroupDetailListType' :: Decode GroupDetailListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGroupDetailListType' :: Encode GroupDetailListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains a list of IAM groups.</p> <p>This data type is used as a response element in the <a>ListGroups</a> action.</p>
newtype GroupListType' = GroupListType' (Array Group)
derive instance newtypeGroupListType' :: Newtype GroupListType' _
derive instance repGenericGroupListType' :: Generic GroupListType' _
instance showGroupListType' :: Show GroupListType' where
  show = genericShow
instance decodeGroupListType' :: Decode GroupListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGroupListType' :: Encode GroupListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GroupNameListType' = GroupNameListType' (Array GroupNameType')
derive instance newtypeGroupNameListType' :: Newtype GroupNameListType' _
derive instance repGenericGroupNameListType' :: Generic GroupNameListType' _
instance showGroupNameListType' :: Show GroupNameListType' where
  show = genericShow
instance decodeGroupNameListType' :: Decode GroupNameListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGroupNameListType' :: Encode GroupNameListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GroupNameType' = GroupNameType' String
derive instance newtypeGroupNameType' :: Newtype GroupNameType' _
derive instance repGenericGroupNameType' :: Generic GroupNameType' _
instance showGroupNameType' :: Show GroupNameType' where
  show = genericShow
instance decodeGroupNameType' :: Decode GroupNameType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGroupNameType' :: Encode GroupNameType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype IdType' = IdType' String
derive instance newtypeIdType' :: Newtype IdType' _
derive instance repGenericIdType' :: Generic IdType' _
instance showIdType' :: Show IdType' where
  show = genericShow
instance decodeIdType' :: Decode IdType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeIdType' :: Encode IdType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains a list of instance profiles.</p>
newtype InstanceProfileListType' = InstanceProfileListType' (Array InstanceProfile)
derive instance newtypeInstanceProfileListType' :: Newtype InstanceProfileListType' _
derive instance repGenericInstanceProfileListType' :: Generic InstanceProfileListType' _
instance showInstanceProfileListType' :: Show InstanceProfileListType' where
  show = genericShow
instance decodeInstanceProfileListType' :: Decode InstanceProfileListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceProfileListType' :: Encode InstanceProfileListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InstanceProfileNameType' = InstanceProfileNameType' String
derive instance newtypeInstanceProfileNameType' :: Newtype InstanceProfileNameType' _
derive instance repGenericInstanceProfileNameType' :: Generic InstanceProfileNameType' _
instance showInstanceProfileNameType' :: Show InstanceProfileNameType' where
  show = genericShow
instance decodeInstanceProfileNameType' :: Decode InstanceProfileNameType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceProfileNameType' :: Encode InstanceProfileNameType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InvalidAuthenticationCodeMessage' = InvalidAuthenticationCodeMessage' String
derive instance newtypeInvalidAuthenticationCodeMessage' :: Newtype InvalidAuthenticationCodeMessage' _
derive instance repGenericInvalidAuthenticationCodeMessage' :: Generic InvalidAuthenticationCodeMessage' _
instance showInvalidAuthenticationCodeMessage' :: Show InvalidAuthenticationCodeMessage' where
  show = genericShow
instance decodeInvalidAuthenticationCodeMessage' :: Decode InvalidAuthenticationCodeMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidAuthenticationCodeMessage' :: Encode InvalidAuthenticationCodeMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InvalidCertificateMessage' = InvalidCertificateMessage' String
derive instance newtypeInvalidCertificateMessage' :: Newtype InvalidCertificateMessage' _
derive instance repGenericInvalidCertificateMessage' :: Generic InvalidCertificateMessage' _
instance showInvalidCertificateMessage' :: Show InvalidCertificateMessage' where
  show = genericShow
instance decodeInvalidCertificateMessage' :: Decode InvalidCertificateMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidCertificateMessage' :: Encode InvalidCertificateMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InvalidInputMessage' = InvalidInputMessage' String
derive instance newtypeInvalidInputMessage' :: Newtype InvalidInputMessage' _
derive instance repGenericInvalidInputMessage' :: Generic InvalidInputMessage' _
instance showInvalidInputMessage' :: Show InvalidInputMessage' where
  show = genericShow
instance decodeInvalidInputMessage' :: Decode InvalidInputMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidInputMessage' :: Encode InvalidInputMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InvalidPublicKeyMessage' = InvalidPublicKeyMessage' String
derive instance newtypeInvalidPublicKeyMessage' :: Newtype InvalidPublicKeyMessage' _
derive instance repGenericInvalidPublicKeyMessage' :: Generic InvalidPublicKeyMessage' _
instance showInvalidPublicKeyMessage' :: Show InvalidPublicKeyMessage' where
  show = genericShow
instance decodeInvalidPublicKeyMessage' :: Decode InvalidPublicKeyMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidPublicKeyMessage' :: Encode InvalidPublicKeyMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InvalidUserTypeMessage' = InvalidUserTypeMessage' String
derive instance newtypeInvalidUserTypeMessage' :: Newtype InvalidUserTypeMessage' _
derive instance repGenericInvalidUserTypeMessage' :: Generic InvalidUserTypeMessage' _
instance showInvalidUserTypeMessage' :: Show InvalidUserTypeMessage' where
  show = genericShow
instance decodeInvalidUserTypeMessage' :: Decode InvalidUserTypeMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidUserTypeMessage' :: Encode InvalidUserTypeMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype KeyPairMismatchMessage' = KeyPairMismatchMessage' String
derive instance newtypeKeyPairMismatchMessage' :: Newtype KeyPairMismatchMessage' _
derive instance repGenericKeyPairMismatchMessage' :: Generic KeyPairMismatchMessage' _
instance showKeyPairMismatchMessage' :: Show KeyPairMismatchMessage' where
  show = genericShow
instance decodeKeyPairMismatchMessage' :: Decode KeyPairMismatchMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeyPairMismatchMessage' :: Encode KeyPairMismatchMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype LimitExceededMessage' = LimitExceededMessage' String
derive instance newtypeLimitExceededMessage' :: Newtype LimitExceededMessage' _
derive instance repGenericLimitExceededMessage' :: Generic LimitExceededMessage' _
instance showLimitExceededMessage' :: Show LimitExceededMessage' where
  show = genericShow
instance decodeLimitExceededMessage' :: Decode LimitExceededMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLimitExceededMessage' :: Encode LimitExceededMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MalformedCertificateMessage' = MalformedCertificateMessage' String
derive instance newtypeMalformedCertificateMessage' :: Newtype MalformedCertificateMessage' _
derive instance repGenericMalformedCertificateMessage' :: Generic MalformedCertificateMessage' _
instance showMalformedCertificateMessage' :: Show MalformedCertificateMessage' where
  show = genericShow
instance decodeMalformedCertificateMessage' :: Decode MalformedCertificateMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMalformedCertificateMessage' :: Encode MalformedCertificateMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MalformedPolicyDocumentMessage' = MalformedPolicyDocumentMessage' String
derive instance newtypeMalformedPolicyDocumentMessage' :: Newtype MalformedPolicyDocumentMessage' _
derive instance repGenericMalformedPolicyDocumentMessage' :: Generic MalformedPolicyDocumentMessage' _
instance showMalformedPolicyDocumentMessage' :: Show MalformedPolicyDocumentMessage' where
  show = genericShow
instance decodeMalformedPolicyDocumentMessage' :: Decode MalformedPolicyDocumentMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMalformedPolicyDocumentMessage' :: Encode MalformedPolicyDocumentMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MarkerType' = MarkerType' String
derive instance newtypeMarkerType' :: Newtype MarkerType' _
derive instance repGenericMarkerType' :: Generic MarkerType' _
instance showMarkerType' :: Show MarkerType' where
  show = genericShow
instance decodeMarkerType' :: Decode MarkerType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMarkerType' :: Encode MarkerType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MaxItemsType' = MaxItemsType' Int
derive instance newtypeMaxItemsType' :: Newtype MaxItemsType' _
derive instance repGenericMaxItemsType' :: Generic MaxItemsType' _
instance showMaxItemsType' :: Show MaxItemsType' where
  show = genericShow
instance decodeMaxItemsType' :: Decode MaxItemsType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxItemsType' :: Encode MaxItemsType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MaxPasswordAgeType' = MaxPasswordAgeType' Int
derive instance newtypeMaxPasswordAgeType' :: Newtype MaxPasswordAgeType' _
derive instance repGenericMaxPasswordAgeType' :: Generic MaxPasswordAgeType' _
instance showMaxPasswordAgeType' :: Show MaxPasswordAgeType' where
  show = genericShow
instance decodeMaxPasswordAgeType' :: Decode MaxPasswordAgeType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxPasswordAgeType' :: Encode MaxPasswordAgeType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains a list of MFA devices.</p> <p>This data type is used as a response element in the <a>ListMFADevices</a> and <a>ListVirtualMFADevices</a> actions. </p>
newtype MfaDeviceListType' = MfaDeviceListType' (Array MFADevice)
derive instance newtypeMfaDeviceListType' :: Newtype MfaDeviceListType' _
derive instance repGenericMfaDeviceListType' :: Generic MfaDeviceListType' _
instance showMfaDeviceListType' :: Show MfaDeviceListType' where
  show = genericShow
instance decodeMfaDeviceListType' :: Decode MfaDeviceListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMfaDeviceListType' :: Encode MfaDeviceListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MinimumPasswordLengthType' = MinimumPasswordLengthType' Int
derive instance newtypeMinimumPasswordLengthType' :: Newtype MinimumPasswordLengthType' _
derive instance repGenericMinimumPasswordLengthType' :: Generic MinimumPasswordLengthType' _
instance showMinimumPasswordLengthType' :: Show MinimumPasswordLengthType' where
  show = genericShow
instance decodeMinimumPasswordLengthType' :: Decode MinimumPasswordLengthType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMinimumPasswordLengthType' :: Encode MinimumPasswordLengthType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NoSuchEntityMessage' = NoSuchEntityMessage' String
derive instance newtypeNoSuchEntityMessage' :: Newtype NoSuchEntityMessage' _
derive instance repGenericNoSuchEntityMessage' :: Generic NoSuchEntityMessage' _
instance showNoSuchEntityMessage' :: Show NoSuchEntityMessage' where
  show = genericShow
instance decodeNoSuchEntityMessage' :: Decode NoSuchEntityMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNoSuchEntityMessage' :: Encode NoSuchEntityMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PasswordPolicyViolationMessage' = PasswordPolicyViolationMessage' String
derive instance newtypePasswordPolicyViolationMessage' :: Newtype PasswordPolicyViolationMessage' _
derive instance repGenericPasswordPolicyViolationMessage' :: Generic PasswordPolicyViolationMessage' _
instance showPasswordPolicyViolationMessage' :: Show PasswordPolicyViolationMessage' where
  show = genericShow
instance decodePasswordPolicyViolationMessage' :: Decode PasswordPolicyViolationMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePasswordPolicyViolationMessage' :: Encode PasswordPolicyViolationMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PasswordReusePreventionType' = PasswordReusePreventionType' Int
derive instance newtypePasswordReusePreventionType' :: Newtype PasswordReusePreventionType' _
derive instance repGenericPasswordReusePreventionType' :: Generic PasswordReusePreventionType' _
instance showPasswordReusePreventionType' :: Show PasswordReusePreventionType' where
  show = genericShow
instance decodePasswordReusePreventionType' :: Decode PasswordReusePreventionType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePasswordReusePreventionType' :: Encode PasswordReusePreventionType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PasswordType' = PasswordType' String
derive instance newtypePasswordType' :: Newtype PasswordType' _
derive instance repGenericPasswordType' :: Generic PasswordType' _
instance showPasswordType' :: Show PasswordType' where
  show = genericShow
instance decodePasswordType' :: Decode PasswordType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePasswordType' :: Encode PasswordType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PathPrefixType' = PathPrefixType' String
derive instance newtypePathPrefixType' :: Newtype PathPrefixType' _
derive instance repGenericPathPrefixType' :: Generic PathPrefixType' _
instance showPathPrefixType' :: Show PathPrefixType' where
  show = genericShow
instance decodePathPrefixType' :: Decode PathPrefixType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePathPrefixType' :: Encode PathPrefixType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PathType' = PathType' String
derive instance newtypePathType' :: Newtype PathType' _
derive instance repGenericPathType' :: Generic PathType' _
instance showPathType' :: Show PathType' where
  show = genericShow
instance decodePathType' :: Decode PathType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePathType' :: Encode PathType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyDescriptionType' = PolicyDescriptionType' String
derive instance newtypePolicyDescriptionType' :: Newtype PolicyDescriptionType' _
derive instance repGenericPolicyDescriptionType' :: Generic PolicyDescriptionType' _
instance showPolicyDescriptionType' :: Show PolicyDescriptionType' where
  show = genericShow
instance decodePolicyDescriptionType' :: Decode PolicyDescriptionType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyDescriptionType' :: Encode PolicyDescriptionType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyDetailListType' = PolicyDetailListType' (Array PolicyDetail)
derive instance newtypePolicyDetailListType' :: Newtype PolicyDetailListType' _
derive instance repGenericPolicyDetailListType' :: Generic PolicyDetailListType' _
instance showPolicyDetailListType' :: Show PolicyDetailListType' where
  show = genericShow
instance decodePolicyDetailListType' :: Decode PolicyDetailListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyDetailListType' :: Encode PolicyDetailListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyDocumentType' = PolicyDocumentType' String
derive instance newtypePolicyDocumentType' :: Newtype PolicyDocumentType' _
derive instance repGenericPolicyDocumentType' :: Generic PolicyDocumentType' _
instance showPolicyDocumentType' :: Show PolicyDocumentType' where
  show = genericShow
instance decodePolicyDocumentType' :: Decode PolicyDocumentType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyDocumentType' :: Encode PolicyDocumentType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyDocumentVersionListType' = PolicyDocumentVersionListType' (Array PolicyVersion)
derive instance newtypePolicyDocumentVersionListType' :: Newtype PolicyDocumentVersionListType' _
derive instance repGenericPolicyDocumentVersionListType' :: Generic PolicyDocumentVersionListType' _
instance showPolicyDocumentVersionListType' :: Show PolicyDocumentVersionListType' where
  show = genericShow
instance decodePolicyDocumentVersionListType' :: Decode PolicyDocumentVersionListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyDocumentVersionListType' :: Encode PolicyDocumentVersionListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyEvaluationErrorMessage' = PolicyEvaluationErrorMessage' String
derive instance newtypePolicyEvaluationErrorMessage' :: Newtype PolicyEvaluationErrorMessage' _
derive instance repGenericPolicyEvaluationErrorMessage' :: Generic PolicyEvaluationErrorMessage' _
instance showPolicyEvaluationErrorMessage' :: Show PolicyEvaluationErrorMessage' where
  show = genericShow
instance decodePolicyEvaluationErrorMessage' :: Decode PolicyEvaluationErrorMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyEvaluationErrorMessage' :: Encode PolicyEvaluationErrorMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyListType' = PolicyListType' (Array Policy)
derive instance newtypePolicyListType' :: Newtype PolicyListType' _
derive instance repGenericPolicyListType' :: Generic PolicyListType' _
instance showPolicyListType' :: Show PolicyListType' where
  show = genericShow
instance decodePolicyListType' :: Decode PolicyListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyListType' :: Encode PolicyListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains a list of policy names.</p> <p>This data type is used as a response element in the <a>ListPolicies</a> action.</p>
newtype PolicyNameListType' = PolicyNameListType' (Array PolicyNameType')
derive instance newtypePolicyNameListType' :: Newtype PolicyNameListType' _
derive instance repGenericPolicyNameListType' :: Generic PolicyNameListType' _
instance showPolicyNameListType' :: Show PolicyNameListType' where
  show = genericShow
instance decodePolicyNameListType' :: Decode PolicyNameListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyNameListType' :: Encode PolicyNameListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyNameType' = PolicyNameType' String
derive instance newtypePolicyNameType' :: Newtype PolicyNameType' _
derive instance repGenericPolicyNameType' :: Generic PolicyNameType' _
instance showPolicyNameType' :: Show PolicyNameType' where
  show = genericShow
instance decodePolicyNameType' :: Decode PolicyNameType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyNameType' :: Encode PolicyNameType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyNotAttachableMessage' = PolicyNotAttachableMessage' String
derive instance newtypePolicyNotAttachableMessage' :: Newtype PolicyNotAttachableMessage' _
derive instance repGenericPolicyNotAttachableMessage' :: Generic PolicyNotAttachableMessage' _
instance showPolicyNotAttachableMessage' :: Show PolicyNotAttachableMessage' where
  show = genericShow
instance decodePolicyNotAttachableMessage' :: Decode PolicyNotAttachableMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyNotAttachableMessage' :: Encode PolicyNotAttachableMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyPathType' = PolicyPathType' String
derive instance newtypePolicyPathType' :: Newtype PolicyPathType' _
derive instance repGenericPolicyPathType' :: Generic PolicyPathType' _
instance showPolicyPathType' :: Show PolicyPathType' where
  show = genericShow
instance decodePolicyPathType' :: Decode PolicyPathType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyPathType' :: Encode PolicyPathType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyScopeType' = PolicyScopeType' String
derive instance newtypePolicyScopeType' :: Newtype PolicyScopeType' _
derive instance repGenericPolicyScopeType' :: Generic PolicyScopeType' _
instance showPolicyScopeType' :: Show PolicyScopeType' where
  show = genericShow
instance decodePolicyScopeType' :: Decode PolicyScopeType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyScopeType' :: Encode PolicyScopeType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyVersionIdType' = PolicyVersionIdType' String
derive instance newtypePolicyVersionIdType' :: Newtype PolicyVersionIdType' _
derive instance repGenericPolicyVersionIdType' :: Generic PolicyVersionIdType' _
instance showPolicyVersionIdType' :: Show PolicyVersionIdType' where
  show = genericShow
instance decodePolicyVersionIdType' :: Decode PolicyVersionIdType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyVersionIdType' :: Encode PolicyVersionIdType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PrivateKeyType' = PrivateKeyType' String
derive instance newtypePrivateKeyType' :: Newtype PrivateKeyType' _
derive instance repGenericPrivateKeyType' :: Generic PrivateKeyType' _
instance showPrivateKeyType' :: Show PrivateKeyType' where
  show = genericShow
instance decodePrivateKeyType' :: Decode PrivateKeyType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePrivateKeyType' :: Encode PrivateKeyType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PublicKeyFingerprintType' = PublicKeyFingerprintType' String
derive instance newtypePublicKeyFingerprintType' :: Newtype PublicKeyFingerprintType' _
derive instance repGenericPublicKeyFingerprintType' :: Generic PublicKeyFingerprintType' _
instance showPublicKeyFingerprintType' :: Show PublicKeyFingerprintType' where
  show = genericShow
instance decodePublicKeyFingerprintType' :: Decode PublicKeyFingerprintType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePublicKeyFingerprintType' :: Encode PublicKeyFingerprintType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PublicKeyIdType' = PublicKeyIdType' String
derive instance newtypePublicKeyIdType' :: Newtype PublicKeyIdType' _
derive instance repGenericPublicKeyIdType' :: Generic PublicKeyIdType' _
instance showPublicKeyIdType' :: Show PublicKeyIdType' where
  show = genericShow
instance decodePublicKeyIdType' :: Decode PublicKeyIdType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePublicKeyIdType' :: Encode PublicKeyIdType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PublicKeyMaterialType' = PublicKeyMaterialType' String
derive instance newtypePublicKeyMaterialType' :: Newtype PublicKeyMaterialType' _
derive instance repGenericPublicKeyMaterialType' :: Generic PublicKeyMaterialType' _
instance showPublicKeyMaterialType' :: Show PublicKeyMaterialType' where
  show = genericShow
instance decodePublicKeyMaterialType' :: Decode PublicKeyMaterialType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePublicKeyMaterialType' :: Encode PublicKeyMaterialType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RoleDescriptionType' = RoleDescriptionType' String
derive instance newtypeRoleDescriptionType' :: Newtype RoleDescriptionType' _
derive instance repGenericRoleDescriptionType' :: Generic RoleDescriptionType' _
instance showRoleDescriptionType' :: Show RoleDescriptionType' where
  show = genericShow
instance decodeRoleDescriptionType' :: Decode RoleDescriptionType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRoleDescriptionType' :: Encode RoleDescriptionType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RoleDetailListType' = RoleDetailListType' (Array RoleDetail)
derive instance newtypeRoleDetailListType' :: Newtype RoleDetailListType' _
derive instance repGenericRoleDetailListType' :: Generic RoleDetailListType' _
instance showRoleDetailListType' :: Show RoleDetailListType' where
  show = genericShow
instance decodeRoleDetailListType' :: Decode RoleDetailListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRoleDetailListType' :: Encode RoleDetailListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains a list of IAM roles.</p> <p>This data type is used as a response element in the <a>ListRoles</a> action.</p>
newtype RoleListType' = RoleListType' (Array Role)
derive instance newtypeRoleListType' :: Newtype RoleListType' _
derive instance repGenericRoleListType' :: Generic RoleListType' _
instance showRoleListType' :: Show RoleListType' where
  show = genericShow
instance decodeRoleListType' :: Decode RoleListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRoleListType' :: Encode RoleListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RoleNameType' = RoleNameType' String
derive instance newtypeRoleNameType' :: Newtype RoleNameType' _
derive instance repGenericRoleNameType' :: Generic RoleNameType' _
instance showRoleNameType' :: Show RoleNameType' where
  show = genericShow
instance decodeRoleNameType' :: Decode RoleNameType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRoleNameType' :: Encode RoleNameType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SerialNumberType' = SerialNumberType' String
derive instance newtypeSerialNumberType' :: Newtype SerialNumberType' _
derive instance repGenericSerialNumberType' :: Generic SerialNumberType' _
instance showSerialNumberType' :: Show SerialNumberType' where
  show = genericShow
instance decodeSerialNumberType' :: Decode SerialNumberType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSerialNumberType' :: Encode SerialNumberType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ServerCertificateMetadataListType' = ServerCertificateMetadataListType' (Array ServerCertificateMetadata)
derive instance newtypeServerCertificateMetadataListType' :: Newtype ServerCertificateMetadataListType' _
derive instance repGenericServerCertificateMetadataListType' :: Generic ServerCertificateMetadataListType' _
instance showServerCertificateMetadataListType' :: Show ServerCertificateMetadataListType' where
  show = genericShow
instance decodeServerCertificateMetadataListType' :: Decode ServerCertificateMetadataListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServerCertificateMetadataListType' :: Encode ServerCertificateMetadataListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ServerCertificateNameType' = ServerCertificateNameType' String
derive instance newtypeServerCertificateNameType' :: Newtype ServerCertificateNameType' _
derive instance repGenericServerCertificateNameType' :: Generic ServerCertificateNameType' _
instance showServerCertificateNameType' :: Show ServerCertificateNameType' where
  show = genericShow
instance decodeServerCertificateNameType' :: Decode ServerCertificateNameType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServerCertificateNameType' :: Encode ServerCertificateNameType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ServiceFailureExceptionMessage' = ServiceFailureExceptionMessage' String
derive instance newtypeServiceFailureExceptionMessage' :: Newtype ServiceFailureExceptionMessage' _
derive instance repGenericServiceFailureExceptionMessage' :: Generic ServiceFailureExceptionMessage' _
instance showServiceFailureExceptionMessage' :: Show ServiceFailureExceptionMessage' where
  show = genericShow
instance decodeServiceFailureExceptionMessage' :: Decode ServiceFailureExceptionMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceFailureExceptionMessage' :: Encode ServiceFailureExceptionMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ServiceName' = ServiceName' String
derive instance newtypeServiceName' :: Newtype ServiceName' _
derive instance repGenericServiceName' :: Generic ServiceName' _
instance showServiceName' :: Show ServiceName' where
  show = genericShow
instance decodeServiceName' :: Decode ServiceName' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceName' :: Encode ServiceName' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ServiceNotSupportedMessage' = ServiceNotSupportedMessage' String
derive instance newtypeServiceNotSupportedMessage' :: Newtype ServiceNotSupportedMessage' _
derive instance repGenericServiceNotSupportedMessage' :: Generic ServiceNotSupportedMessage' _
instance showServiceNotSupportedMessage' :: Show ServiceNotSupportedMessage' where
  show = genericShow
instance decodeServiceNotSupportedMessage' :: Decode ServiceNotSupportedMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceNotSupportedMessage' :: Encode ServiceNotSupportedMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ServicePassword' = ServicePassword' String
derive instance newtypeServicePassword' :: Newtype ServicePassword' _
derive instance repGenericServicePassword' :: Generic ServicePassword' _
instance showServicePassword' :: Show ServicePassword' where
  show = genericShow
instance decodeServicePassword' :: Decode ServicePassword' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServicePassword' :: Encode ServicePassword' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ServiceSpecificCredentialId' = ServiceSpecificCredentialId' String
derive instance newtypeServiceSpecificCredentialId' :: Newtype ServiceSpecificCredentialId' _
derive instance repGenericServiceSpecificCredentialId' :: Generic ServiceSpecificCredentialId' _
instance showServiceSpecificCredentialId' :: Show ServiceSpecificCredentialId' where
  show = genericShow
instance decodeServiceSpecificCredentialId' :: Decode ServiceSpecificCredentialId' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceSpecificCredentialId' :: Encode ServiceSpecificCredentialId' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ServiceUserName' = ServiceUserName' String
derive instance newtypeServiceUserName' :: Newtype ServiceUserName' _
derive instance repGenericServiceUserName' :: Generic ServiceUserName' _
instance showServiceUserName' :: Show ServiceUserName' where
  show = genericShow
instance decodeServiceUserName' :: Decode ServiceUserName' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceUserName' :: Encode ServiceUserName' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype StatusType' = StatusType' String
derive instance newtypeStatusType' :: Newtype StatusType' _
derive instance repGenericStatusType' :: Generic StatusType' _
instance showStatusType' :: Show StatusType' where
  show = genericShow
instance decodeStatusType' :: Decode StatusType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStatusType' :: Encode StatusType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype StringType' = StringType' String
derive instance newtypeStringType' :: Newtype StringType' _
derive instance repGenericStringType' :: Generic StringType' _
instance showStringType' :: Show StringType' where
  show = genericShow
instance decodeStringType' :: Decode StringType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStringType' :: Encode StringType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SummaryKeyType' = SummaryKeyType' String
derive instance newtypeSummaryKeyType' :: Newtype SummaryKeyType' _
derive instance repGenericSummaryKeyType' :: Generic SummaryKeyType' _
instance showSummaryKeyType' :: Show SummaryKeyType' where
  show = genericShow
instance decodeSummaryKeyType' :: Decode SummaryKeyType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSummaryKeyType' :: Encode SummaryKeyType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SummaryMapType' = SummaryMapType' (StrMap.StrMap SummaryValueType')
derive instance newtypeSummaryMapType' :: Newtype SummaryMapType' _
derive instance repGenericSummaryMapType' :: Generic SummaryMapType' _
instance showSummaryMapType' :: Show SummaryMapType' where
  show = genericShow
instance decodeSummaryMapType' :: Decode SummaryMapType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSummaryMapType' :: Encode SummaryMapType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SummaryValueType' = SummaryValueType' Int
derive instance newtypeSummaryValueType' :: Newtype SummaryValueType' _
derive instance repGenericSummaryValueType' :: Generic SummaryValueType' _
instance showSummaryValueType' :: Show SummaryValueType' where
  show = genericShow
instance decodeSummaryValueType' :: Decode SummaryValueType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSummaryValueType' :: Encode SummaryValueType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains a list of thumbprints of identity provider server certificates.</p>
newtype ThumbprintListType' = ThumbprintListType' (Array ThumbprintType')
derive instance newtypeThumbprintListType' :: Newtype ThumbprintListType' _
derive instance repGenericThumbprintListType' :: Generic ThumbprintListType' _
instance showThumbprintListType' :: Show ThumbprintListType' where
  show = genericShow
instance decodeThumbprintListType' :: Decode ThumbprintListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeThumbprintListType' :: Encode ThumbprintListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains a thumbprint for an identity provider's server certificate.</p> <p>The identity provider's server certificate thumbprint is the hex-encoded SHA-1 hash value of the self-signed X.509 certificate used by the domain where the OpenID Connect provider makes its keys available. It is always a 40-character string.</p>
newtype ThumbprintType' = ThumbprintType' String
derive instance newtypeThumbprintType' :: Newtype ThumbprintType' _
derive instance repGenericThumbprintType' :: Generic ThumbprintType' _
instance showThumbprintType' :: Show ThumbprintType' where
  show = genericShow
instance decodeThumbprintType' :: Decode ThumbprintType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeThumbprintType' :: Encode ThumbprintType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype UnmodifiableEntityMessage' = UnmodifiableEntityMessage' String
derive instance newtypeUnmodifiableEntityMessage' :: Newtype UnmodifiableEntityMessage' _
derive instance repGenericUnmodifiableEntityMessage' :: Generic UnmodifiableEntityMessage' _
instance showUnmodifiableEntityMessage' :: Show UnmodifiableEntityMessage' where
  show = genericShow
instance decodeUnmodifiableEntityMessage' :: Decode UnmodifiableEntityMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnmodifiableEntityMessage' :: Encode UnmodifiableEntityMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype UnrecognizedPublicKeyEncodingMessage' = UnrecognizedPublicKeyEncodingMessage' String
derive instance newtypeUnrecognizedPublicKeyEncodingMessage' :: Newtype UnrecognizedPublicKeyEncodingMessage' _
derive instance repGenericUnrecognizedPublicKeyEncodingMessage' :: Generic UnrecognizedPublicKeyEncodingMessage' _
instance showUnrecognizedPublicKeyEncodingMessage' :: Show UnrecognizedPublicKeyEncodingMessage' where
  show = genericShow
instance decodeUnrecognizedPublicKeyEncodingMessage' :: Decode UnrecognizedPublicKeyEncodingMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnrecognizedPublicKeyEncodingMessage' :: Encode UnrecognizedPublicKeyEncodingMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype UserDetailListType' = UserDetailListType' (Array UserDetail)
derive instance newtypeUserDetailListType' :: Newtype UserDetailListType' _
derive instance repGenericUserDetailListType' :: Generic UserDetailListType' _
instance showUserDetailListType' :: Show UserDetailListType' where
  show = genericShow
instance decodeUserDetailListType' :: Decode UserDetailListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUserDetailListType' :: Encode UserDetailListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains a list of users.</p> <p>This data type is used as a response element in the <a>GetGroup</a> and <a>ListUsers</a> actions. </p>
newtype UserListType' = UserListType' (Array User)
derive instance newtypeUserListType' :: Newtype UserListType' _
derive instance repGenericUserListType' :: Generic UserListType' _
instance showUserListType' :: Show UserListType' where
  show = genericShow
instance decodeUserListType' :: Decode UserListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUserListType' :: Encode UserListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype UserNameType' = UserNameType' String
derive instance newtypeUserNameType' :: Newtype UserNameType' _
derive instance repGenericUserNameType' :: Generic UserNameType' _
instance showUserNameType' :: Show UserNameType' where
  show = genericShow
instance decodeUserNameType' :: Decode UserNameType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUserNameType' :: Encode UserNameType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype VirtualMFADeviceListType' = VirtualMFADeviceListType' (Array VirtualMFADevice)
derive instance newtypeVirtualMFADeviceListType' :: Newtype VirtualMFADeviceListType' _
derive instance repGenericVirtualMFADeviceListType' :: Generic VirtualMFADeviceListType' _
instance showVirtualMFADeviceListType' :: Show VirtualMFADeviceListType' where
  show = genericShow
instance decodeVirtualMFADeviceListType' :: Decode VirtualMFADeviceListType' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeVirtualMFADeviceListType' :: Encode VirtualMFADeviceListType' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype VirtualMFADeviceName' = VirtualMFADeviceName' String
derive instance newtypeVirtualMFADeviceName' :: Newtype VirtualMFADeviceName' _
derive instance repGenericVirtualMFADeviceName' :: Generic VirtualMFADeviceName' _
instance showVirtualMFADeviceName' :: Show VirtualMFADeviceName' where
  show = genericShow
instance decodeVirtualMFADeviceName' :: Decode VirtualMFADeviceName' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeVirtualMFADeviceName' :: Encode VirtualMFADeviceName' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

