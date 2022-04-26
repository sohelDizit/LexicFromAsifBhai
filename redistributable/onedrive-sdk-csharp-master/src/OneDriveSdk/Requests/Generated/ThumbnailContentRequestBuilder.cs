// ------------------------------------------------------------------------------
//  Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.
// ------------------------------------------------------------------------------

using System.Collections.Generic;

using Microsoft.Graph;

// **NOTE** This file was generated by a tool and any changes will be overwritten.


namespace Microsoft.OneDrive.Sdk
{
    /// <summary>
    /// The type ThumbnailContentRequestBuilder.
    /// </summary>
    public partial class ThumbnailContentRequestBuilder : BaseRequestBuilder, IThumbnailContentRequestBuilder
    {
        /// <summary>
        /// Constructs a new ThumbnailContentRequestBuilder.
        /// </summary>
        /// <param name="requestUrl">The URL for the built request.</param>
        /// <param name="client">The <see cref="IBaseClient"/> for handling requests.</param>
        public ThumbnailContentRequestBuilder(
            string requestUrl,
            IBaseClient client)
            : base(requestUrl, client)
        {
        }

        /// <summary>
        /// Builds the request.
        /// </summary>
        /// <returns>The built request.</returns>
        public IThumbnailContentRequest Request()
        {
            return new ThumbnailContentRequest(this.RequestUrl, this.Client, null);
        }
    }
}
