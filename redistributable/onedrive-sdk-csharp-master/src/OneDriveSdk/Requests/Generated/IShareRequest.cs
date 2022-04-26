// ------------------------------------------------------------------------------
//  Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.
// ------------------------------------------------------------------------------

using System;
using System.IO;
using System.Net.Http;
using System.Threading;

using Microsoft.Graph;

// **NOTE** This file was generated by a tool and any changes will be overwritten.


namespace Microsoft.OneDrive.Sdk
{
    /// <summary>
    /// The interface IShareRequest.
    /// </summary>
    public partial interface IShareRequest : IBaseRequest
    {
        /// <summary>
        /// Creates the specified Share using PUT.
        /// </summary>
        /// <param name="shareToCreate">The Share to create.</param>
        /// <returns>The created Share.</returns>
        System.Threading.Tasks.Task<Share> CreateAsync(Share shareToCreate);        /// <summary>
        /// Creates the specified Share using PUT.
        /// </summary>
        /// <param name="shareToCreate">The Share to create.</param>
        /// <param name="cancellationToken">The <see cref="CancellationToken"/> for the request.</param>
        /// <returns>The created Share.</returns>
        System.Threading.Tasks.Task<Share> CreateAsync(Share shareToCreate, CancellationToken cancellationToken);

        /// <summary>
        /// Deletes the specified Share.
        /// </summary>
        /// <returns>The task to await.</returns>
        System.Threading.Tasks.Task DeleteAsync();

        /// <summary>
        /// Deletes the specified Share.
        /// </summary>
        /// <param name="cancellationToken">The <see cref="CancellationToken"/> for the request.</param>
        /// <returns>The task to await.</returns>
        System.Threading.Tasks.Task DeleteAsync(CancellationToken cancellationToken);

        /// <summary>
        /// Gets the specified Share.
        /// </summary>
        /// <returns>The Share.</returns>
        System.Threading.Tasks.Task<Share> GetAsync();

        /// <summary>
        /// Gets the specified Share.
        /// </summary>
        /// <param name="cancellationToken">The <see cref="CancellationToken"/> for the request.</param>
        /// <returns>The Share.</returns>
        System.Threading.Tasks.Task<Share> GetAsync(CancellationToken cancellationToken);

        /// <summary>
        /// Updates the specified Share using PATCH.
        /// </summary>
        /// <param name="shareToUpdate">The Share to update.</param>
        /// <returns>The updated Share.</returns>
        System.Threading.Tasks.Task<Share> UpdateAsync(Share shareToUpdate);

        /// <summary>
        /// Updates the specified Share using PATCH.
        /// </summary>
        /// <param name="shareToUpdate">The Share to update.</param>
        /// <param name="cancellationToken">The <see cref="CancellationToken"/> for the request.</param>
        /// <returns>The updated Share.</returns>
        System.Threading.Tasks.Task<Share> UpdateAsync(Share shareToUpdate, CancellationToken cancellationToken);

        /// <summary>
        /// Adds the specified expand value to the request.
        /// </summary>
        /// <param name="value">The expand value.</param>
        /// <returns>The request object to send.</returns>
        IShareRequest Expand(string value);

        /// <summary>
        /// Adds the specified select value to the request.
        /// </summary>
        /// <param name="value">The select value.</param>
        /// <returns>The request object to send.</returns>
        IShareRequest Select(string value);

    }
}
